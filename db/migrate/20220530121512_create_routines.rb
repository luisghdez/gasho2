class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :duration
      t.string :description
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
