class ActivitiesController < ApplicationController
  include Mets::Calculate
  include ExerciseCalculator
  respond_to :json

  def index
    # response = Mets::Calculate()
  end
end
