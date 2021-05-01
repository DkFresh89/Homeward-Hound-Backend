class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :address, :phone_number, :good_sam, :id, :dogs, :missing_flyers

  # has_many :missing_flyers, through: :dogs

end
