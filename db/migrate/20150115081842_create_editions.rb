class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :name
      t.datetime :date_of_event

      t.timestamps null: false
    end
  end
end
