class AddProfessionToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :profession, :string
  end
end
