class AddDifficultyToStretch < ActiveRecord::Migration[6.1]
  def change
    add_column :stretches, :difficulty, :string
  end
end
