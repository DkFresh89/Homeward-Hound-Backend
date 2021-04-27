class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :address, :phone_number, :good_sam
end
