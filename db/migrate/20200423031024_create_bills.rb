class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :description
      t.float :amount
      t.string :due_date
      t.integer :user_id

      t.timestamps
    end
  end
end
