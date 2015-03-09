class MakeEditionsColumnsNonNullable < ActiveRecord::Migration
  def change
    change_column :editions, :name, :string, null: false
    change_column :editions, :date_of_event, :datetime, null: false
  end
end
