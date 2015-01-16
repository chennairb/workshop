class CreateCoachEditions < ActiveRecord::Migration
  def change
    create_table :coach_editions do |t|
      t.belongs_to :coach, index: true
      t.belongs_to :edition, index: true

      t.timestamps null: false
    end
    add_foreign_key :coach_editions, :coaches, on_delete: :cascade
    add_foreign_key :coach_editions, :editions, on_delete: :cascade
  end
end
