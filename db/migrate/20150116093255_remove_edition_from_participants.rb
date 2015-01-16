class RemoveEditionFromParticipants < ActiveRecord::Migration
  def change
    remove_reference :participants, :edition, index: true
    remove_foreign_key :participants, :editions
  end
end
