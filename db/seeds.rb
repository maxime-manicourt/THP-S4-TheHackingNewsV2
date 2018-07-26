# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
  user = User.create(email: Faker::Internet.email)
end

10.times do |index|
  a = rand(1..10)
  link = Link.create(link: Faker::Internet.url, user_id: a)
end

10.times do |index|
  a = rand(1..10)
  b = rand(1..10)
  comment = Comment.create(content: Faker::Friends.quote, user_id: a, links_id: b)
end

10.times do |index|
  a = rand(1..10)
  b = rand(1..10)
  subcomment = Subcomment.create(content: Faker::Friends.character, user_id: a, comment_id: b)
end
