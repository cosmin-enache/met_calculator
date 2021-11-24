# frozen_string_literal: true

RSpec.describe MetCalculator do
  it "has a version number" do
    expect(MetCalculator::VERSION).not_to be nil
  end

  describe "calculating calories burned using Metabolic Equivalent of Task values" do
    it "calculates a value for running" do
      expect(false).to eq(true)
    end

    it "calculates a value for cycling" do
      expect(false).to eq(true)
    end

    it "calculates a value for swimming" do
      expect(false).to eq(true)
    end
  end
end
