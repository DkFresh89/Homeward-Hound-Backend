class Sighting < ApplicationRecord
  belongs_to :missing_flyer, optional: true
  belongs_to :user, optional: true

  has_one :dog, through: :missing_flyer
end
