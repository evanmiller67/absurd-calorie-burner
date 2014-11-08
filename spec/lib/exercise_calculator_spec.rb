require 'spec_helper'

describe ExerciseCalculator do
  context "Calculating an individual's basic HB RMR" do
    before do
      @age = 40
      @height = 177.8
      @weight = 79.38
    end

    it "calculates basic HB RMR correctly for a man" do
      gender = "M"
      expect(ExerciseCalculator.base_hbrmr(@age, gender, @height, @weight)).to eq(1777.461748)
    end

    it "calculates basic HB RMR correctly for a woman" do
      gender = "F"
      expect(ExerciseCalculator.base_hbrmr(@age, gender, @height, @weight)).to eq(1550.713812)
    end    
  end

  context "Calculating an individual's adjusted HB RMR" do
    it "calculates correctly for the male in the basic HB RMR case" do
      hbrmr = 1777.461748
      weight = 79.38

      expect(ExerciseCalculator.adjusted_hbrmr(hbrmr, weight)).to eq(3.109973384003807)
    end

    it "calculates correctly for the female in the basic HB RMR case" do
      hbrmr = 1550.713812
      weight = 79.38

      expect(ExerciseCalculator.adjusted_hbrmr(hbrmr, weight)).to eq(2.7132390820525747)
    end
  end

  context "Converting height and weight" do
    it "converts a height from inches to centimeters" do
      expect(ExerciseCalculator.convert_height_to_cm(60)).to eq(152.4)
    end

    it "converts a weight from pounds to kilograms" do
      expect(ExerciseCalculator.convert_weight_to_kg(225)).to eq(102.06)
    end
  end
end
