class User < ApplicationRecord
    has_many :dogs, dependent: :destroy
    has_many :missing_flyers, through: :dogs
end
