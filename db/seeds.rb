# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(id: 1,name: "イクモア",image_product: open("#{Rails.root}/db/fixtures/ikumoa.png"),price: 6000,date: "2016年11月30日",capacity: "30g")
Product.create!(id: 2,name: "ミカン",image_product: open("#{Rails.root}/db/fixtures/mikan.jpg"),price: 3000,date: "2015年7月21日",capacity: "50g")