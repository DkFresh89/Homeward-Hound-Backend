class DogSerializer
  include JSONAPI::Serializer
  attributes :name, :breed, :size, :age, :temperament, :image
end
