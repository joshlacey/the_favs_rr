class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :address
end
