class RemoveNullFromRoutine < ActiveRecord::Migration[6.1]
  def change
    change_column_null :routines, :sport_id, true
  end
end
