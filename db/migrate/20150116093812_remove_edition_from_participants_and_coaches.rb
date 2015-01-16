class RemoveEditionFromParticipantsAndCoaches < ActiveRecord::Migration
  def change
    remove_foreign_key :participants, :editions
    remove_foreign_key :coaches, :editions
    remove_reference :participants, :edition, index: true
    remove_reference :coaches, :edition, index: true
  end
end
