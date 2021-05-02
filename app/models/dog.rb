class Dog < ApplicationRecord
  belongs_to :user
  has_many :missing_flyers
end
