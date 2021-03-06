# a class to display a parsed log file
require_relative 'web_server_log_parser'
require_relative 'parse_exception'
class LogDisplay
  def initialize(filename)
    @parser = WebServerLogParser.new
    begin
      @parser.parse(filename) == false
    rescue
      raise ParseException.new('There was a problem parsing that file')
    end      
  end

  def pages_by_visits
    sorted = @parser.pages.sort{ |a, b| b[1].visits.size <=> a[1].visits.size }
    sorted.each do |_name, page|
      puts "#{page.name} #{page.visits.size}"
    end
  end

  def pages_by_unique_visits
    sorted = @parser.pages.sort{ |a, b| b[1].unique_visits <=> a[1].unique_visits }
    sorted.each do |_name, page|
      puts "#{page.name} #{page.unique_visits}"
    end
  end
end