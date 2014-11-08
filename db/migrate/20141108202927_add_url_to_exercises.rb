class AddUrlToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :url, :string
  end
end
