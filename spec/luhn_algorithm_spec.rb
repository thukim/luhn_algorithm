RSpec.describe LuhnAlgorithm do
  it "has a version number" do
    expect(LuhnAlgorithm::VERSION).not_to be nil
  end

  [
    {
      value: '6011111111111117',
      result: true
    },
    {
      value: '6011111111111118',
      result: false
    },
    {
      value: 4222222222222,
      result: true
    },
    {
      value: '4222221222222',
      result: false
    },
    {
      value: '4522222222222',
      result: false
    },
    {
      value: '4522222222222',
      result: false
    },
    {
      value: '45222222222220',
      result: false
    },
    {
      value: '45222222222220',
      result: false
    },
    {
      value: '4111111111111111',
      result: true
    },
    {
      value: 'A122333333333',
      result: false
    },
    {
      value: 6011000990139424,
      result: true
    }
  ].each do |hs|
    it "return #{hs[:result]} for value #{hs[:value]}" do
      expect(LuhnAlgorithm.valid?(hs[:value])).to eq(hs[:result])
    end
  end
end
