class AddImageToRoutine < ActiveRecord::Migration[6.1]
  def change
    add_column :routines, :image, :string
  end
end
