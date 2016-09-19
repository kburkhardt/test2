class CreateConflicts < ActiveRecord::Migration
  def change
    create_table :conflicts do |t|
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
