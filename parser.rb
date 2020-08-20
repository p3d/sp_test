#!/usr/bin/env ruby 
require_relative 'lib/web_server_log_parser.rb'

if ARGV.count != 1
  puts 'Usage: parser.rb logfile'
  exit 1
end


puts 'There was a problem parsing that file' unless WebServerLogParser.parse(ARGV[0])
