class DogSerializer < ActiveModel::Serializer
  attributes :id, :breed, :age, :name, :owner_id, :shelter_id, :sex
  belongs_to :owner, optional: true
  belongs_to :shelter, optional: true
end