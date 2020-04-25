class CreateBillContributors < ActiveRecord::Migration[6.0]
  def change
    create_table :bill_contributors do |t|
      t.float :contributed_amount
      t.boolean :paid, default: false
      t.integer :user_id
      t.integer :bill_id

      t.timestamps
    end
  end
end
