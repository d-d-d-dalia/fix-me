class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :dogs
  has_many :shelters, through: :dogs
end
