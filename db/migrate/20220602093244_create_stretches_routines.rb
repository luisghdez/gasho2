class CreateStretchesRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :stretches_routines do |t|
      t.references :routine, null: false, foreign_key: true
      t.references :stretch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
