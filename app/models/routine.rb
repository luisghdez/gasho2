class Routine < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_many :stretches_routines, dependent: :destroy
  has_many :stretches, through: :stretches_routines
  has_one_attached :background
end
