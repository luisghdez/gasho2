class AddImageToSports < ActiveRecord::Migration[6.1]
  def change
    add_column :sports, :image, :string
  end
end
