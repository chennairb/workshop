class AddEditionToParticipants < ActiveRecord::Migration
  def change
    add_reference :participants, :edition, index: true
    add_foreign_key :participants, :editions
  end
end
