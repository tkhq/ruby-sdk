#!/usr/bin/env ruby
require 'fileutils'
require_relative 'changeset_lib'

include ChangesetLib

def build_release_section(version, date, changes)
  by_bump = { 'patch' => [], 'minor' => [], 'major' => [] }

  changes.each do |c|
    key = %w[patch minor major].include?(c['bump']) ? c['bump'] : 'patch'
    by_bump[key] << c
  end

  lines = []
  lines << "## #{version} -- #{date}"
  lines << ''

  [
    ['patch', 'Patch Changes'],
    ['minor', 'Minor Changes'],
    ['major', 'Major Changes']
  ].each do |key, heading|
    next if by_bump[key].empty?

    lines << "### #{heading}"
    by_bump[key].each do |change|
      note = change['note']
      title = change['title']
      if note == '_No additional notes._'
        lines << "- #{title}"
      else
        lines << "- #{note}"
      end
    end
    lines << ''
  end

  lines.join("\n") + "\n"
end

def merge_changelog(existing, new_section)
  if existing.strip.empty?
    return "#{CHANGELOG_HEADER}\n\n#{new_section}"
  end

  trimmed = existing.lstrip
  unless trimmed.start_with?(CHANGELOG_HEADER)
    return "#{CHANGELOG_HEADER}\n\n#{new_section}#{existing}"
  end

  # Insert new section right after the "# Changelog" header line
  lines = existing.split("\n")
  header_line = lines.first
  rest = lines[1..].join("\n").lstrip

  result = "#{header_line}\n\n#{new_section}"
  result += rest unless rest.empty?
  result
end

def main
  meta = read_release_meta
  version = meta['toVersion']
  date = meta['date']
  changes = meta['changes']

  if changes.nil? || changes.empty?
    puts 'No changes in release metadata -- nothing to changelog.'
    return
  end

  new_section = build_release_section(version, date, changes)

  existing = File.exist?(CHANGELOG_FILE) ? File.read(CHANGELOG_FILE) : ''
  merged = merge_changelog(existing, new_section)
  File.write(CHANGELOG_FILE, merged)
  puts "Updated #{CHANGELOG_FILE} for v#{version}"

  delete_processed_changesets(meta)
  puts 'Deleted processed changesets and release metadata.'
end

main
