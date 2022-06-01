class RemoveUserFromSports < ActiveRecord::Migration[6.1]
  def change
    remove_reference :sports, :user, null: false, foreign_key: true
  end
end
