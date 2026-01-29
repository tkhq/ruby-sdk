#!/usr/bin/env ruby
require 'fileutils'
require_relative 'changeset_lib'

include ChangesetLib

def prompt_bump
  puts 'Select bump type:'
  puts '  1) patch'
  puts '  2) minor'
  puts '  3) major'

  loop do
    print 'Choice (1-3): '
    case $stdin.gets&.strip
    when '1' then return 'patch'
    when '2' then return 'minor'
    when '3' then return 'major'
    else puts 'Invalid choice, please enter 1, 2, or 3.'
    end
  end
end

def prompt_line(label)
  print label
  $stdin.gets&.chomp || ''
end

def prompt_multiline
  lines = []
  loop do
    line = $stdin.gets
    break if line.nil?
    break if line.strip == '.'
    lines << line.chomp
  end
  lines.pop while !lines.empty? && lines.last.strip.empty?
  lines.empty? ? '_No additional notes._' : lines.join("\n")
end

def build_changeset_content(title:, date:, bump:, note:)
  <<~CONTENT
    ---
    title: "#{escape_yaml_string(title)}"
    date: "#{date}"
    bump: "#{bump}"
    ---

    #{note}
  CONTENT
end

def main
  puts '=== Create Changeset ==='
  puts

  bump = prompt_bump
  puts

  title = prompt_line('Short title for this change: ')
  abort('Error: title cannot be empty.') if title.strip.empty?

  puts
  puts 'Enter a longer description (markdown allowed).'
  puts 'End input with a single "." on its own line:'
  note = prompt_multiline

  now = Time.now
  filename = "#{format_timestamp(now)}-#{slugify(title)}.md"
  FileUtils.mkdir_p(CHANGESET_DIR)

  filepath = File.join(CHANGESET_DIR, filename)
  content = build_changeset_content(
    title: title.strip,
    date: date_only(now),
    bump: bump,
    note: note
  )

  File.write(filepath, content)
  puts
  puts "Changeset written to #{filepath}"
end

main
