class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :dogs
  has_many :owners, through: :dogs
end
