class MissingFlyer < ApplicationRecord
  belongs_to :dog
  has_many :sightings, dependent: :destroy
end
