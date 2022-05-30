class RemoveUserFromSports < ActiveRecord::Migration[6.1]
  def change
    remove_column :sports, :user_id
  end
end
