class CreateBorings < ActiveRecord::Migration
  def change
    create_table :borings do |t|
      t.integer :count

      t.timestamps null: false
    end
    Boring.create(count: 0)
  end
end
