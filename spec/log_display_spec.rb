require 'log_display'
require 'pry'
RSpec.describe LogDisplay do
  describe '.pages_by_visits' do
    context 'when there are entries in the log file' do
      it 'displays all of the pages in order of the number of visits each page has had' do
        logdisplay = LogDisplay.new('test.log')
        expect(logdisplay.pages_by_visits).to eq "/index 4\n/contact 3\n/about/2 3\n"
      end
    end
    context 'when there are no entries in the log file' do
      it 'displays a message indicating no visists found' do
        logdisplay = LogDisplay.new('test-empty.log')
        expect(logdisplay.pages_by_visits).to eq "No visits found in file"
      end
    end
  end

  describe '.pages_by_unique_visits' do
    context 'when there are entries in the log file' do
      it 'displays all of the pages in order of the number of unique visits each page has had' do
        logdisplay = LogDisplay.new('test.log')
        expect(logdisplay.pages_by_unique_visits).to eq "/index 4\n/about/2 3\n/contact 2\n"
      end
    end
    context 'when there are no entries in the log file' do
      it 'displays a message indicating no visists found' do
        logdisplay = LogDisplay.new('test-empty.log')
        expect(logdisplay.pages_by_unique_visits).to eq "No visits found in file"
      end
    end
  end
end