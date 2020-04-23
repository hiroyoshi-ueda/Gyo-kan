# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	Admin.create!( id: 1,
				   name: "総持寺", name_kana: "ソウジジ",
				   post_code: "2308686",
				   address: "神奈川県横浜市鶴見区鶴見2-1-1",
				   email: "a@a",
				   tel: "0455816021",
				   password: "111111",
				   password_confirmation: "111111",
				   image_id:1,
				   image: File.open("./app/assets/images/temple1.jpeg")
		         )

	Admin.create!( id: 2,
				   name: "永平寺", name_kana: "エイヘイジ",
				   post_code: "9101228",
				   address: "福井県吉田郡永平寺町志比5-15",
				   email: "b@b",
				   tel: "0776633102",
				   password: "222222",
				   password_confirmation: "222222",
		         )

	User.create!(
				  fam_name: "佐藤", fam_name_kana:"サトウ",
				  first_name: "太郎", first_name_kana: "タロウ",
				  post_code: "1234",
				  address: "東京都渋谷区神南",
				  domicle: "青森県八戸市",
				  email: "q@q",
				  tel: "09011111111",
				  admin_id: 1,
				  password:"111111",
				  password_confirmation: "111111"
				)

	User.create!(
				  fam_name: "山田", fam_name_kana:"ヤマダ",
				  first_name: "次郎", first_name_kana: "ジロウ",
				  post_code: "5678",
				  address: "東京都中央区日本橋",
				  domicle: "青森県八戸市",
				  email: "z@z",
				  tel: "09022222222",
				  admin_id: 2,
				  password:"222222",
				  password_confirmation: "222222"
				)

	User.create!(
				  fam_name: "田中", fam_name_kana:"タナカ",
				  first_name: "三郎", first_name_kana: "サブロウ",
				  post_code: "4321",
				  address: "東京都江戸川区瑞江",
				  domicle: "青森県八戸市",
				  email: "w@w",
				  tel: "09033333333",
				  admin_id: 1,
				  password:"333333",
				  password_confirmation: "333333"
				)


