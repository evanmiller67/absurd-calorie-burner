class AddMetToCreateExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :met, :integer
  end
end
