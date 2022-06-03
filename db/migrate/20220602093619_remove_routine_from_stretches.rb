class RemoveRoutineFromStretches < ActiveRecord::Migration[6.1]
  def change
    remove_reference :stretches, :routine, null: false, foreign_key: true
  end
end
