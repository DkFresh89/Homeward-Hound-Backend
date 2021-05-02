class Sighting < ApplicationRecord
  belongs_to :missing_flyer, optional: true
  belongs_to :user, optional: true
end
