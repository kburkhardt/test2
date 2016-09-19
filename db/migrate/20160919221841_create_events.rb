class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.string :location
      t.datetime :start_time
      t.integer :duration

      t.timestamps null: false
    end
  end
end
