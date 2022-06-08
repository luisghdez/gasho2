class AddDurationToStretch < ActiveRecord::Migration[6.1]
  def change
    add_column :stretches, :duration, :integer
  end
end
