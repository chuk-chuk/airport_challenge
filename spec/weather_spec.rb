require 'weather'

describe Weather do
  subject(:weather) {described_class.new}

  it "should return true " do
    allow(weather).to receive(:stormy?) { true }
    expect(weather.stormy?).to eq true
  end

  it "should return false " do
    allow(Kernel).to receive(:rand) { 20 }
    expect(weather.stormy?).to eq false
  end

end
