class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.float :cbpm
      t.string :intensity

      t.timestamps
    end
  end
end
