class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.boolean :attended_meetups
      t.string :student_or_employed
      t.boolean :living_in_chennai
      t.boolean :have_ruby_configured_laptop
      t.text :remarks

      t.timestamps
    end
  end
end
