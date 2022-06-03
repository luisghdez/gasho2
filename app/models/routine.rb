class Routine < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_many :stretches_routines
  has_many :stretches, through: :stretches_routines
end
