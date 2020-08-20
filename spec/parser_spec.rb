RSpec.describe 'testing error handingline in parser script' do
  context 'when supplied with the incorrect number of arguments' do
    it 'should return with a non zero exit status ' do
      expect(system("./parser.rb")).to eq false
    end
  end

  context 'when supplied with the correct number of arguments' do
    it 'should return with a zero exit status ' do
      expect(system("./parser.rb", 'webserver.log')).to eq true
    end
  end
end