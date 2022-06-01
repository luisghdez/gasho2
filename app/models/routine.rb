class Routine < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
