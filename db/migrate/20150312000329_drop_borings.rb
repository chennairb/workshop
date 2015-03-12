class DropBorings < ActiveRecord::Migration
  def up
    drop_table :borings
  end
end
