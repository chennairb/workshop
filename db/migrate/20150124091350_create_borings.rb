class CreateBorings < ActiveRecord::Migration
  def change
    create_table :borings do |t|
      t.integer :count

      t.timestamps null: false
    end
  end
end
