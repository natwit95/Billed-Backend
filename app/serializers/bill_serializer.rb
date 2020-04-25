class BillSerializer < ActiveModel::Serializer
  attributes :id, :description, :amount, :due_date
  has_many :bill_contributors
  
end
