class DogSerializer
  include JSONAPI::Serializer
  attributes :name, :breed, :size, :age, :temperament, :image, :id
  # attribute :user

  belongs_to :user
end
