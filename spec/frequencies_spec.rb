describe Frequencies do
  describe '#soundwave' do
    it "should return the given soundwaves if within range of frequencies" do
      expect(subject.soundwave([60],40,1000)).to eq [60]
    end
  end
end
