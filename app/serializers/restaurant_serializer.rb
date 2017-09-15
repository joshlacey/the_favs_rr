class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :address, :dishes
  has_many :dishes, :dependent => :destroy_all
end
