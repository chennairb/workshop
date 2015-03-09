class MakeParticipantsColumnsNonNullable < ActiveRecord::Migration
  def change
    change_column :participants, :name, :string, null: false
    change_column :participants, :email, :string, null: false
  end
end
