module Mets
  class Calculate
    def self.weight_from_calories_starting_weight_mets_time(calories, weight, mets, time)
      cph = calories / (time / 60.0)
      total_weight = cph / mets
      starting_kg = weight * 0.453592

      (total_weight - starting_kg) * 2.20462
    end

    def self.time_from_calories_starting_weight_mets_additional_weight(calories, weight, mets, additional_weight)
      cph = (weight + additional_weight) * 0.453592 * mets
      (calories / cph) * 60
    end
  end
end
