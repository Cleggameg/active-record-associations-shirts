require 'spec_helper'

describe Shirt do
  it "knows who designed it" do
    expect(Shirt.find(5).designer.name).to eq "Anne"
  end

  it "knows in which transactions it's been sold" do
    expect(Shirt.find(3).sale_ids).to match_array [3, 4]
  end

  it "knows who has puchased it" do
    expect(Shirt.find(1).purchasers.pluck(:name)).to match_array ["John", "Ralph"]
  end
end
