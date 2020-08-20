# This class parses web server logs
class WebServerLogParser
  def self.parse(filename)
    # open the file or return an error
    begin
      log_file = File.open(filename, 'r')
      log_data = log_file.readlines
    rescue Errno::ENOENT => e
      return false
    end
    # read each line of the file
    filename
  end
end
