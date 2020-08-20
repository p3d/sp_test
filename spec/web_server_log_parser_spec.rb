require 'web_server_log_parser'

RSpec.describe WebServerLogParser do
  describe '#parse' do
    context 'when supplied with an existing filename' do
      it 'returns true' do
        expect(WebServerLogParser.new.parse('webserver.log')).to eq true
      end
    end

    context 'when supplied with a filename which does not exist' do
      it 'returns false' do
        expect(WebServerLogParser.new.parse('notfound.log')).to eq false
      end
    end
  end
end
