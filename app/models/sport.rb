class Sport < ApplicationRecord
  has_many :routines, as: :imageable
end
