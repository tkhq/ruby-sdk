require 'json'
require 'yaml'
require 'fileutils'

module ChangesetLib
  CHANGESET_DIR = '.changesets'
  RELEASE_META_FILE = '_current_release.json'
  VERSION_FILE = 'turnkey_client/lib/turnkey_client/version.rb'
  CONFIG_FILE = 'turnkey_client_inputs/config.json'
  CHANGELOG_FILE = 'CHANGELOG.md'
  CHANGELOG_HEADER = '# Changelog'

  ChangesetEntry = Struct.new(:path, :title, :date, :bump, :note, keyword_init: true)

  def slugify(str)
    slug = str.downcase
              .gsub(/[^a-z0-9\s_-]/, '')
              .gsub(/[\s_-]+/, '-')
              .gsub(/\A-+|-+\z/, '')
    slug.empty? ? 'changeset' : slug
  end

  def format_timestamp(time)
    time.strftime('%Y%m%d-%H%M%S')
  end

  def date_only(time)
    time.strftime('%Y-%m-%d')
  end

  def today_date
    date_only(Time.now)
  end

  def escape_yaml_string(str)
    str.gsub('\\', '\\\\\\\\').gsub('"', '\\"')
  end

  def parse_version(version_str)
    base = version_str.strip.split(/[-+]/, 2).first
    parts = base.split('.')
    unless parts.length == 3 && parts.all? { |p| p.match?(/\A\d+\z/) }
      raise "Invalid version format: '#{version_str}', expected X.Y.Z"
    end
    parts.map(&:to_i)
  end

  def next_version(current, bump)
    major, minor, patch = parse_version(current)
    case bump
    when 'major'
      "#{major + 1}.0.0"
    when 'minor'
      "#{major}.#{minor + 1}.0"
    when 'patch'
      "#{major}.#{minor}.#{patch + 1}"
    else
      raise "Unknown bump type: '#{bump}'"
    end
  end

  def bump_level(bump)
    case bump
    when 'patch' then 1
    when 'minor' then 2
    when 'major' then 3
    else raise "Unknown bump type: '#{bump}'"
    end
  end

  def max_bump(bumps)
    bumps.max_by { |b| bump_level(b) }
  end

  def read_current_version
    unless File.exist?(VERSION_FILE)
      raise "Cannot read version: #{VERSION_FILE} does not exist"
    end
    content = File.read(VERSION_FILE)
    match = content.match(/VERSION\s*=\s*['"]([^'"]+)['"]/)
    unless match
      raise "Cannot find VERSION constant in #{VERSION_FILE}"
    end
    match[1]
  end

  def write_version_rb(new_version)
    content = File.read(VERSION_FILE)
    updated = content.sub(/VERSION\s*=\s*['"][^'"]+['"]/, "VERSION = '#{new_version}'")
    File.write(VERSION_FILE, updated)
  end

  def write_config_json(new_version)
    content = File.read(CONFIG_FILE)
    data = JSON.parse(content)
    data['gemVersion'] = new_version
    File.write(CONFIG_FILE, JSON.pretty_generate(data) + "\n")
  end

  def load_changesets
    dir = CHANGESET_DIR
    return [] unless Dir.exist?(dir)

    Dir.glob(File.join(dir, '*.md'))
       .reject { |f| File.basename(f).start_with?('_') }
       .sort
       .map { |f| parse_changeset_file(f) }
       .compact
  end

  def parse_changeset_file(path)
    raw = File.read(path).strip
    unless raw.start_with?('---')
      warn "warning: #{path} does not start with frontmatter delimiter, skipping"
      return nil
    end

    parts = raw.split(/^---\s*$/m)
    if parts.length < 3
      warn "warning: #{path} has malformed frontmatter, skipping"
      return nil
    end

    frontmatter = YAML.safe_load(parts[1])
    body = parts[2..].join('---').strip
    body = '_No additional notes._' if body.empty?

    ChangesetEntry.new(
      path: path,
      title: frontmatter['title'],
      date: frontmatter['date'] || today_date,
      bump: frontmatter['bump'] || 'patch',
      note: body
    )
  rescue => e
    warn "warning: failed to parse changeset #{path}: #{e.message}"
    nil
  end

  def read_release_meta
    meta_path = File.join(CHANGESET_DIR, RELEASE_META_FILE)
    unless File.exist?(meta_path)
      raise "No release metadata found at #{meta_path}. Run `make version` first."
    end
    JSON.parse(File.read(meta_path))
  end

  def write_release_meta(meta)
    FileUtils.mkdir_p(CHANGESET_DIR)
    meta_path = File.join(CHANGESET_DIR, RELEASE_META_FILE)
    File.write(meta_path, JSON.pretty_generate(meta) + "\n")
  end

  def delete_processed_changesets(meta)
    (meta['changes'] || []).each do |change|
      path = change['changesetPath']
      if path && File.exist?(path)
        File.delete(path)
      end
    end

    meta_path = File.join(CHANGESET_DIR, RELEASE_META_FILE)
    File.delete(meta_path) if File.exist?(meta_path)
  end
end
