require 'frequencies'

describe Frequencies do
  describe '#soundwave' do
    it "should return the given soundwaves if within range of frequencies" do
      expect(subject.soundwave([60],40,1000)).to eq [60]
    end

    it "should return lower limit if input is under lower limit" do
      expect(subject.soundwave([20],40,1000)).to eq [40]
    end

    it "should return both the soundwaves if within limit" do
      expect(subject.soundwave([50,60],40,1000)).to eq [50,60]
    end

    it "should return upper limit if soundwave is above upper limit" do
      expect(subject.soundwave([1200],40,1000)).to eq [1000]
    end

    it "should return the lower limits if both soundwaves are under the limit" do
      expect(subject.soundwave([10,20],40,1000)).to eq [40,40]
    end

    it "should return the upper limits if both soundwaves above limit" do
      expect(subject.soundwave([1100,1200],40,1000)).to eq [1000,1000]
    end

  end
end
