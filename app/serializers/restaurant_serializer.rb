class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :address
  has_many :dishes
end
