# This class parses web server logs
require_relative './page'
require_relative './visit'
class WebServerLogParser
  attr_accessor :pages
  def initialize()
    @pages = {}
    @visits = []
  end

  def parse(filename)
    log_file = File.open(filename, 'r')
    log_data = log_file.readlines
    
    log_data.each do |log_line|
      page_name, visitor_address = log_line.split(' ')
      visit = Visit.new(page_name, visitor_address)

      if @pages[page_name] == nil
        @pages[page_name] = Page.new(page_name)
      end
      @pages[page_name].visits << visit
    end
    true
  end
end
