class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :city
  has_many :restaurants

end
