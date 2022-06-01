class Stretch < ApplicationRecord
  belongs_to :routine
  has_one :sport, through: :routine
end
