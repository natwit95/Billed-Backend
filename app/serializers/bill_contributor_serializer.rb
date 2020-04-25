class BillContributorSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :contributed_amount, :paid
  
end
