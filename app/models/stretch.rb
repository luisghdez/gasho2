class Stretch < ApplicationRecord
  has_many :stretches_routines
  has_many :routines, through: :stretches_routines
end
