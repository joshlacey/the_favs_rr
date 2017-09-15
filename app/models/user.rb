class User < ApplicationRecord
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
  has_many :dishes, through: :restaurants
end
