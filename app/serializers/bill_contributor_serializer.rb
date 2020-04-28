class BillContributorSerializer < ActiveModel::Serializer
  attributes  :user_id, :contributed_amount, :paid,:bill_id
  
end
