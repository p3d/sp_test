require 'page'
require 'visit'

RSpec.describe Page do
  describe '.unique_visits' do
    it 'returns the number of unique visits' do
      p = build(:page, name: '/about')
      v1 = build(:visit, visitor_address: '192.168.0.1')
      v2 = build(:visit, visitor_address: '192.168.0.1')
      v3 = build(:visit, visitor_address: '192.168.0.2')
      p.visits = [v1, v2, v3]

      expect(p.unique_visits).to eq 2
    end
  end
end

