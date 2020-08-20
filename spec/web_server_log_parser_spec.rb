require 'web_server_log_parser'

RSpec.describe WebServerLogParser do
  describe '.parse' do
    it 'returns the name of the filename provided' do
      expect(WebServerLogParser.parse('filename.log')).to eq 'filename.log'
    end
  end
end
