class Restaurant < ApplicationRecord
  has_many :user_restaurants
  has_many :users, through: :user_restaurants
  has_many :dishes, :dependent => :destroy
end
