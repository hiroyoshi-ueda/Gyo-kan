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



