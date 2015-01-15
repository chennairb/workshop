class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name, null: false
      t.string :email, null: false, index: true, unique: true
      t.boolean :attended_meetups
      t.string :student_or_employed
      t.boolean :living_in_chennai
      t.boolean :have_ruby_configured_laptop
      t.text :remarks

      t.timestamps null: false
    end
  end
end
