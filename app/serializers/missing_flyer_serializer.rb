class MissingFlyerSerializer
  include JSONAPI::Serializer
  attributes :lattitude, :longitude, :found, :reward, :description
end
