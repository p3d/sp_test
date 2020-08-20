#!/usr/bin/env ruby 
require_relative 'lib/log_display'
require 'pry'

if ARGV.count != 1
  puts 'Usage: parser.rb logfile'
  exit 1
end

begin
  log_display = LogDisplay.new(ARGV[0])
rescue Exception => e
  puts "There was a problem parsing that file. #{e.message}"
  exit 1
end

puts "Pages sorted by total number of visits"
puts log_display.pages_by_visits
puts ""
puts "Pages sorted by number of unique visits"
puts log_display.pages_by_unique_visits


