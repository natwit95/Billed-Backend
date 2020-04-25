class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :followers
  has_many :followings
end
