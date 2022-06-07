class AddBackgroundToRoutine < ActiveRecord::Migration[6.1]
  def change
    add_column :routines, :background, :string
  end
end
