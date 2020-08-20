# This class parses web server logs
require_relative './visit'
class WebServerLogParser
  def initialize()
    @pages = []
    @visits = []
  end

  def parse(filename)
    begin
      log_file = File.open(filename, 'r')
      log_data = log_file.readlines
      
      log_data.each do |log_line|
        parsed_line = log_line.split(',')
        @visits << Visit.new(parsed_line[0], parsed_line[1])
      end
    rescue Errno::ENOENT => e
      return false
    end
    # read each line of the file
    filename
  end
end
