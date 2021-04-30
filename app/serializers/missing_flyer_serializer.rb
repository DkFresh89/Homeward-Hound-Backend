class MissingFlyerSerializer
  include JSONAPI::Serializer
  attributes :latitude, :longitude, :found, :reward, :description
end
