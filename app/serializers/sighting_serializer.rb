class SightingSerializer
  include JSONAPI::Serializer
  attributes :latitude, :longitude, :description, :time_stamp, :user, :missing_flyer

  # belongs_to :user
end
