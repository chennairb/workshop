class MakeCoachesColumnsNonNullable < ActiveRecord::Migration
  def change
    change_column :coaches, :name, :string, null: false
    change_column :coaches, :email, :string, null: false
  end
end
