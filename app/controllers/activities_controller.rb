class ActivitiesController < ApplicationController
  include ApplicationHelper
  respond_to :json

  def index
    # response = Mets::Calculate()
  end

  def search
    item = Item.all.sample

    cals   = params[:calories].to_i
    gender = params[:gender]
    height = params[:height].to_i
    weight = params[:weight].to_i
    age    = params[:age].to_i
    equivalents = Food.equivalent_to(cals)

    if [true,false].sample
      # find an absurd weight
      time = (5..240).to_a.sample
      if time > 120
        exercise = Exercise.where('met < 3').sample
      else
        exercise = Exercise.where('met >= 3').sample
      end
      additional_weight = find_additional_weight_from_calories_mets_gender_height_weight_age_mets_time(cals, gender, height, weight, age, exercise.met, time)
    else
      # find an absurd time
      exercise = Exercise.all.sample
      additional_weight = (0..(2*weight.to_i)).to_a.sample
      time = find_time_from_calories_mets_gender_height_weight_additional_weight_age(cals, exercise.met, gender, height, weight, additional_weight, age)
    end

    resp = {
      time: time,
      additional_weight: additional_weight,
      exercise_name: exercise.title,
      exercise_url: exercise.url,
      item: item.name,
      equivalent: equivalents
    }

    respond_with resp
  end
end
