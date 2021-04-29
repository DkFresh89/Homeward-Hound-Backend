class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :address, :phone_number, :good_sam, :dogs

  # has_many :dogs

end
