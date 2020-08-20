#!/usr/bin/env ruby 
require_relative 'lib/web_server_log_parser.rb'
require 'pry'

if ARGV.count != 1
  puts 'Usage: parser.rb logfile'
  exit 1
end


#puts 'There was a problem parsing that file' unless WebServerLogParser.new.parse(ARGV[0])

parser = WebServerLogParser.new
parser.parse(ARGV[0])

log_display = LogDisplay.new(parser)
log_display.pages_by_visits
log_display.pages_by_unique_visits

