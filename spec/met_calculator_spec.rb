# frozen_string_literal: true

RSpec.describe MetCalculator do
  it "has a version number" do
    expect(MetCalculator::VERSION).not_to be nil
  end
  
  describe "calculating calories burned using Metabolic Equivalent of Task values" do
    it "calculates a value for running" do
      expect(
        MetCalculator.calories :running, 80, 1
      ).to eq(640.0)
    end

    it "calculates a value for cycling" do
      expect(
        MetCalculator.calories :cycling, 90, 2
      ).to eq(1350.0)
    end

    it "calculates a value for swimming" do
      expect(
        MetCalculator.calories :swimming, 110, 3
      ).to eq(1914.0)
    end
  end
end
