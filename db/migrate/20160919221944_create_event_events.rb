class CreateEventEvents < ActiveRecord::Migration
  def change
    create_table :event_events do |t|
      t.references :event, index: true, foreign_key: true
      t.references :conflict, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
