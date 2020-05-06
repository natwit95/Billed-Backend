class BillContributorSerializer < ActiveModel::Serializer
  attributes  :id, :bill_id,:user_id, :name,  :contributed_amount, :paid, :description
# belongs_to :bill
  

  def description
    object.bill.description
  end

  def name
    object.user.name
    # object.user.username
  end

  


end
