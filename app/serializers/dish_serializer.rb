class DishSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :restaurant
end
