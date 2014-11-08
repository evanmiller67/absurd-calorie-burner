class ReplaceItemWithItemIdOnExercisesTable < ActiveRecord::Migration
  def up
    remove_column :exercises, :item
    add_column :exercises, :item_id, :integer
  end

  def down
    add_column :exercises, :item, :string
    remove_column :exercises, :item_id
  end
end
