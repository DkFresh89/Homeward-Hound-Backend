class DogSerializer
  include JSONAPI::Serializer
  attributes :name, :breed, :size, :age, :temperament, :image
  # attribute :user

  belongs_to :user
end
