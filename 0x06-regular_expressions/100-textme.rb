#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit 1
end

# Read the log file provided as an argument
log_file = File.read(ARGV[0])

# Extract sender, receiver, and flags using regex
matches = log_file.scan(/\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/)

# Output the results
matches.each do |match|
  sender = match[0].strip
  receiver = match[1].strip
  flags = match[2].strip
  puts "#{sender},#{receiver},#{flags}"
end
