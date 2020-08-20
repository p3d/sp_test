#!/usr/bin/env ruby 
require_relative 'lib/log_display'
require 'pry'

if ARGV.count != 1
  puts 'Usage: parser.rb logfile'
  exit 1
end

#puts 'There was a problem parsing that file' unless WebServerLogParser.new.parse(ARGV[0])

log_display = LogDisplay.new(ARGV[0])

puts "Pages sorted by total number of visits"
log_display.pages_by_visits
puts "Pages sorted number of unique visits"
log_display.pages_by_unique_visits


