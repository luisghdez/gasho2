class AddPhotoToStretch < ActiveRecord::Migration[6.1]
  def change
    add_column :stretches, :photo, :string
  end
end
