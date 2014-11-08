class AddItemToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :item, :string
  end
end
