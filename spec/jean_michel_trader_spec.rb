require_relative '../lib/jean_michel_trader.rb'

describe "maximize gains" do
  it "Returns buy day and sell day" do
    expect(day_trader([2, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([0,4])
  end

  it "Returns buy day and sell day (not selling before buying)" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end

  it "Returns buy day and sell day (not buying before selling)" do
    expect(day_trader([17, 3, 9,5,9,4,6, 9, 15, 8, 6, 1, 10])).to eq([1,8])
  end
end
