class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :email
      t.string :twitter_handle
      t.boolean :attended_meetups
      t.boolean :living_in_chennai

      t.timestamps null: false
    end
  end
end
