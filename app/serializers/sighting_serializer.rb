class SightingSerializer
  include JSONAPI::Serializer
  attributes :latitude, :longitude, :description, :time_stamp
end
