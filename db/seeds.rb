# 100.times do |index|
#   Customer.create(family_name: "鈴木", given_name: "太郎", email: "customer_#{index}@sparta.com")
# end
Company.create(name: "スパルタ商事", url: "http://spartacamp.jp/", address: "東京都千代田区1-1-1")
Company.create(name: "スパルタ物産", url: "http://spartacamp.jp/", address: "東京都千代田区1-1-2")
Company.create(name: "スパルタ銀行", url: "http://spartacamp.jp/", address: "東京都千代田区1-1-3")


100.times do |index|
  Customer.create(
    family_name: Faker::Japanese::Name.last_name,
    given_name: Faker::Japanese::Name.first_name,
    email: "customer_#{index}@sparta.com",
    company_id: rand(3) + 1
  )
end




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
