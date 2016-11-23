# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.new(email:"user@gmail.com", password:"xxxxxx")
user.save!


user2 = User.new(email:"user2@gmail.com", password:"xxxxxx")
user2.save!








a = Skill.new(name: "seo", description: "j'ai travaillé dendant deux ans dans une agence Seo", meeting_point: "16 villa gaudelet", price:1, user_id: user.id)
a.save!

d = Skill.new(name: "sea", description: "j'ai travaillé dendant deux ans dans une agence sea", meeting_point: "16 villa gaudelet", price:1, user_id: user2.id)
d.save!


b = Skill.new(name: "sea", description: "Je connais très bien Google adwords", meeting_point: "16 villa gaudelet", price:1, user_id:user2.id)
b.save!

e = Skill.new(name: "Ruby", description: "j'ai fait le wagon ", meeting_point: "16 villa gaudelet", price:1, user_id: user2.id)
e.save!

s = Skill.new(name: "Marketing digital", description: "j'ai travaillé en agence", meeting_point: "16 villa gaudelet", price:1, user_id: user.id)
s.save!


q = Skill.new(name: "sea", description: "j'ai travaillé dendant deux ans dans une agence Seo", meeting_point: "16 villa gaudelet", price:1, user_id: user.id)
q.save!







