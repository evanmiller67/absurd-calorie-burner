class ActivitiesController < ApplicationController
  include ApplicationHelper
  respond_to :json

  def index
    # response = Mets::Calculate()
  end

  def search
    exercise = Exercise.all.sample
    item = Item.all.sample

    cals = params[:calories].to_i
    gender = params[:gender]
    height = params[:height].to_i
    weight = params[:weight].to_i
    age = params[:age].to_i

    #if [true,false].sample
    if true
      # find an absurd weight
      time = (5..2880).to_a.sample
      additional_weight = find_additional_weight_from_calories_mets_gender_height_weight_age_mets_time(cals, gender, height, weight, age, exercise.met, time)
    else
      # find an absurd time
      additional_weight = (0..(2*weight.to_i)).to_a.sample
      time = find_time_from_calories_mets_gender_height_weight_additional_weight_age(cals, exercise.met, gender, height, weight, additional_weight, age)
    end

    resp = {
      time: time,
      additional_weight: additional_weight,
      exercise_name: exercise.title,
      item: item.name,
      equivalent:
        {
          #Iteration 2
          #name: food.name,
          #amount: equivalent_amount
          name: nil,
          amount: nil
        }
    }

    respond_with resp
  end
end
