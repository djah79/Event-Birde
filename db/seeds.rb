# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times  do
#     m = Faker::Name.last_name + "@yopmail.com"
#     User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
#     description: Faker::Books::Lovecraft.paragraph(sentence_count: 2, random_sentences_to_add: 1),
#     password: "321654", email: m )
# end
# Event.destroy_all
# 10.times do
#     Event.create(start_date:Faker::Time.between(from: DateTime.now + 60, to: DateTime.now + 3600000, format: :default),
#     location:Faker::Address.city, price:Faker::Number.between(from: 10, to: 99), duration: [15, 20, 25, 30, 60, 90, 120].shuffle[3],
#     title:Faker::Book.title, description:Faker::Books::Lovecraft.paragraph(sentence_count: 2,random_sentences_to_add: 1),
#     admin_id: User.all.shuffle[0].id)
# end


# 10.times do
#     Attendance.create(user_id: User.all.shuffle[0].id, event_id: Event.suffle[0].id, attendance_date: Time.now)
# end