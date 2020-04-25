# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bill.destroy_all
Follow.destroy_all
BillContributor.destroy_all

User.create(name: "Natalia", email: "natalia@yahoo.com", username: "natwit95", password_digest: "1234")
User.create(name: "Anthony", email: "anthony@yahoo.com", username: "anthony78", password_digest: "1234")
User.create(name: "Cindy", email: "cindy@yahoo.com", username: "cindy95", password_digest: "1234")

Follow.create(follower_id: 2, followed_user_id: 1)
Follow.create(follower_id: 3, followed_user_id: 1)

Bill.create(description: "Rent", amount: 900, due_date: "05/01/20", user_id: 1)
Bill.create(description: "Groceries", amount: 120, due_date: "05/10/20", user_id: 1)

BillContributor.create(user_id:1, bill_id:1, contributed_amount: 300, paid: false)
BillContributor.create(user_id:2, bill_id:1, contributed_amount: 300, paid: false)
BillContributor.create(user_id:3, bill_id:1, contributed_amount: 300, paid: false)

BillContributor.create(user_id:1, bill_id:2, contributed_amount: 60, paid: false)
BillContributor.create(user_id:3, bill_id:2, contributed_amount: 60, paid: false)
