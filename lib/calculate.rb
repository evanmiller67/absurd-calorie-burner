module Calculate
  # Calculate additional weight from the amount of calories to burn, starting weight, mets of activity and time
  # This is using the standard MET calculation:
  #   Calories per hour = Weight in KG * MET
  #def self.weight_from_calories_starting_weight_mets_time(calories, weight, mets, time)
    #cph = calories / time
    #total_weight = cph / mets

    #total_weight - weight
  #end

  # Calculate hours from the amount of calories to burn, starting weight, mets of activity and additional weight
  # This is using the standard MET calculation:
  #   Calories per hour = Weight in KG * MET
  #def self.hours_from_calories_starting_weight_mets_additional_weight(calories, weight, mets, additional_weight)
    #cph = (weight + additional_weight) * mets
    #calories / cph
  #end

  # Calculate the BMR necessary to burn the input calories based on the mets and time.
  # This is based on the equation:
  #   Calorie burn = (BMR / 24) * MET * hours
  def self.bmr_from_calories_mets_hours(calories, mets, time)
    calories / mets / time * 24.0
  end

  # Calculate BMR from demographic data based on the equations:
  #   Female: BMR = (13.75 x WKG) + (5 x HC) - (6.76 x age) + 66
  #   Male:   BMR = (9.56 x WKG) + (1.85 x HC) - (4.68 x age) + 655
  def self.bmr_from_gender_height_weight_age(gender, centimeters, weight, age)
    if gender.downcase[0] == 'f'
      (9.56 * weight) + (1.85 * centimeters) - (4.68 * age) + 655
    else
      (13.75 * weight) + (5 * centimeters) - (6.76 * age) + 66
    end
  end

  # Calculate the time necessary to burn the input calories based on the mets and weight.
  # This is based on the equation:
  #   Calorie burn = (BMR / 24) * MET * hours
  def self.time_from_calories_mets_bmr(calories, mets, bmr)
    calories / mets / (bmr / 24.0)
  end

  # Calculate additional KG needed for exercise based on BMR, Gender, Height in cm, and age
  # This is based on the equations:
  #   Female: BMR = (13.75 x WKG) + (5 x HC) - (6.76 x age) + 66
  #   Male:   BMR = (9.56 x WKG) + (1.85 x HC) - (4.68 x age) + 655
  def self.weight_from_bmr_gender_centimeters_and_age(bmr, gender, centimeters, age)
    if gender.downcase[0] == 'f'
      (bmr - 655.0 + (4.68 * age) - (1.85 * centimeters)) / 9.56
    else
      (bmr - 66.0 + (6.76 * age) - (5 * centimeters)) / 13.75
    end
  end


  def self.lb_to_kg(weight)
    weight * 0.45359237
  end

  def self.kg_to_lb(weight)
    weight * 2.20462262185
  end

  def self.in_to_cm(height)
    height * 2.54
  end

  def self.cm_to_in(height)
    height * 0.39370079
  end
end
