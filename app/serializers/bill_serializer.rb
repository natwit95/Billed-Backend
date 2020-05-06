class BillSerializer < ActiveModel::Serializer
  attributes :id, :description, :amount, :due_date, :user_id
  
  has_many :bill_contributors
  
  
end
