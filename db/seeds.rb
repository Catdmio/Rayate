# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tattooer.destroy_all

10.times do |t|
Tattooer.create({
	pictureurl: 'https://loremflickr.com/320/240',
	name: Faker::Name.name,
	style: Faker::Hipster.word,
	email: "tattooer#{t}@gmail.com",
	password: '123456'})
end

20.times do
start_at = Random.rand(10).days.ago + 5.days
Event.create!(title: Faker::Name.name, start: start_at)
end