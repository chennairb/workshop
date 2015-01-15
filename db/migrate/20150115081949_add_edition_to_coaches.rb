class AddEditionToCoaches < ActiveRecord::Migration
  def change
    add_reference :coaches, :edition, index: true
    add_foreign_key :coaches, :editions
  end
end
