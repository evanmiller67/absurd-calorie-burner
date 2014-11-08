module ExerciseCalculator
  attr_reader :base_hbrmr

  def self.base_hbrmr(age, gender, height_in_cm, weight_in_kg)
    case gender
      when "F"
        655.0955 + (1.8496 * height_in_cm.to_f) + (9.5364 * weight_in_kg.to_f) - (4.756 * age.to_i)
      else
        66.473 + (5.0033 * height_in_cm.to_f) + (13.7516 * weight_in_kg.to_f) - (6.755 * age.to_i)
    end
  end

  def self.adjusted_hbrmr(base_hbrmr, weight_in_kg)
    (((base_hbrmr/1440)/5)/weight_in_kg.to_f)*1000
  end

  def self.convert_weight_to_kg(weight_in_lbs)
    (weight_in_lbs/2.2046).round(2)
  end

  def self.convert_height_to_cm(height_in_inches)
    (height_in_inches*2.54).round(2)
  end
end