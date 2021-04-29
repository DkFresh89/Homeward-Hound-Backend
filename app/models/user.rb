class User < ApplicationRecord
    has_many :dogs, dependent: :destroy
end
