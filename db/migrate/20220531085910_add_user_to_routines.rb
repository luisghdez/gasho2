class AddUserToRoutines < ActiveRecord::Migration[6.1]
  def change
    add_reference :routines, :user, foreign_key: true
  end
end
