class AddPolymorphicToRoutines < ActiveRecord::Migration[6.1]
  def change
    add_reference :routines, :imageable, polymorphic: true, index: true
    remove_reference :routines, :user, index: true, foreign_key: true
    remove_reference :routines, :sport, index: true, foreign_key: true
  end
end
