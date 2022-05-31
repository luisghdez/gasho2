class AddUserToSports < ActiveRecord::Migration[6.1]
  def change
    add_reference :sports, :user, index: true
  end
end
