#!/usr/bin/env ruby
require_relative 'changeset_lib'

include ChangesetLib

def main
  # Warn if a release is already in progress
  meta_path = File.join(CHANGESET_DIR, RELEASE_META_FILE)
  if File.exist?(meta_path)
    warn "warning: #{meta_path} already exists."
    warn 'Run `make changelog` to process the current release before versioning again.'
    warn 'Continuing will overwrite the existing release metadata.'
    print 'Continue? (y/N): '
    answer = $stdin.gets&.strip&.downcase
    abort('Aborted.') unless answer == 'y'
  end

  changesets = load_changesets
  if changesets.empty?
    puts 'No pending changesets found -- nothing to version.'
    return
  end

  current_version = read_current_version
  override = ARGV[0]

  if override
    parse_version(override) # validate format
    new_version = override
    bump = 'manual'
    puts "Manual version override: #{current_version} -> #{new_version}"
  else
    bumps = changesets.map(&:bump)
    bump = max_bump(bumps)
    new_version = next_version(current_version, bump)
    puts "Applying version bump: #{current_version} -> #{new_version} (#{bump})"
  end

  write_version_rb(new_version)
  puts "  Updated #{VERSION_FILE}"

  write_config_json(new_version)
  puts "  Updated #{CONFIG_FILE}"

  changes = changesets.map do |cs|
    {
      'title' => cs.title,
      'bump' => cs.bump,
      'note' => cs.note,
      'changesetPath' => cs.path
    }
  end

  meta = {
    'created' => Time.now.strftime('%Y-%m-%dT%H:%M:%S%z'),
    'date' => today_date,
    'fromVersion' => current_version,
    'toVersion' => new_version,
    'bump' => bump,
    'changes' => changes
  }

  write_release_meta(meta)
  puts
  puts "Wrote release metadata to #{meta_path}"
  puts
  puts "#{changesets.length} changeset(s) processed. Version: #{current_version} -> #{new_version}"
end

main
