module ExerciseCalculator
  attr_reader :base_hbrmr

  def self.base_hbrmr(age, gender, height, weight)
    case gender
      when "F"
        655.0955 + (1.8496 * height.to_f) + (9.5364 * weight.to_f) - (4.756 * age.to_i)
      else
        66.473 + (5.0033 * height.to_f) + (13.7516 * weight.to_f) - (6.755 * age.to_i)
    end
  end

  def self.adjusted_hbrmr(base_hbrmr, weight)
    (((base_hbrmr/1440)/5)/weight.to_f)*1000
  end
end