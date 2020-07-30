class FollowSerializer < ActiveModel::Serializer
  attributes :id, :follower_id, :followed_user_id
  
  belongs_to :followed_user, foreign_key: :followed_user_id, class_name: "User"
  belongs_to :follower, foreign_key: :follower_id, class_name: "User"

end
