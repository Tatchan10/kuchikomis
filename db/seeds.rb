# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(id: 1,name: "イクモア",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/ikumoa.png"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/ikumoa_hed.png"),price: 6000,date: "2016年11月30日",capacity: "30g",junre:2)
Product.create!(id: 2,name: "オレンジシャンプー",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/mikan.jpg"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/orennzishannpoo.PNG"),price: 3000,date: "2015年7月21日",capacity: "50g",junre:1)
Product.create!(id: 3,name: "リジュン",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/rijunn.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/リジュン_hed.PNG"),price: 6000,date: "2016年11月30日",capacity: "30g",junre:2)
Product.create!(id: 4,name: "CA101",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/ca101_sum.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/ca101_hed.PNG"),price: 3000,date: "2015年7月21日",capacity: "50g",junre:1)
Product.create!(id: 5,name: "ハーブガーデン",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/harbgarden_sum.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/harbgarden_hed.PNG"),price: 2000,date: "2015年7月21日",capacity: "300ml",junre:1)
Product.create!(id: 6,name: "ドットエヌ",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/dotenu_sum.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/dotenu_hed.PNG"),price: 2000,date: "2015年7月21日",capacity: "300ml",junre:1)
Product.create!(id: 7,name: "メリット",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/merit_sum.jpg"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/merit_hed.PNG"),price: 700,date: "2015年7月21日",capacity: "480ml",junre:1)
Product.create!(id: 8,name: "カウブランド",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/kaubrand_sum.jpg"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/kaubrand_hed.jpg"),price: 600,date: "2015年7月21日",capacity: "380ml",junre:1)
Product.create!(id: 9,name: "Curel",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/kyureru_sum.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/kyureru_hed.jpg"),price: 1080,date: "2015年7月21日",capacity: "420ml",junre:1)
Product.create!(id: 10,name: "エコロヴィスタ",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/ekorovisuta_sum.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/ekolovisuta_hed.PNG"),price: 1500,date: "2015年7月21日",capacity: "500ml",junre:1)
Product.create!(id: 11,name: "いち髪",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/itikami_sum.jpg"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/itikami_hed.PNG"),price: 584,date: "2015年7月21日",capacity: "480ml",junre:1)
Product.create!(id: 12,name: "クレージュ",image_product_sum: open("#{Rails.root}/db/fixtures/image_product_sum/kure-zyu_sum.PNG"),image_product_hed: open("#{Rails.root}/db/fixtures/image_product_hed/kure-zyu_hed.PNG"),price: 1512,date: "2015年7月21日",capacity: "500ml",junre:1)