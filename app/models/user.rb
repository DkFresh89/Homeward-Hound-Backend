class User < ApplicationRecord
    validates :name, :password_digest, presence: true 
    
    has_many :dogs, dependent: :destroy
    has_many :missing_flyers, through: :dogs
end
