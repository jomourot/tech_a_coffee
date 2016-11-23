bapt = User.new(email:"user3@gmail.com", password:"xxxxxx", first_name: "Bapt", last_name:"Saint-Aubin")
bapt.save!


jo = User.new(email:"user4@gmail.com", password:"xxxxxx", first_name: "Jo", last_name:"Mourot")
jo.save!

a = Skill.new(name: "seo", description: "j'ai travaillé dendant deux ans dans une agence Seo", meeting_point: "16 villa gaudelet", price:1, user_id: bapt.id)
a.save!

d = Skill.new(name: "sea", description: "j'ai travaillé dendant deux ans dans une agence sea", meeting_point: "16 villa gaudelet", price:1, user_id: jo.id)
d.save!


b = Skill.new(name: "sea", description: "Je connais très bien Google adwords", meeting_point: "16 villa gaudelet", price:1, user_id:jo.id)
b.save!

e = Skill.new(name: "Ruby", description: "j'ai fait le wagon ", meeting_point: "16 villa gaudelet", price:1, user_id: jo.id)
e.save!

s = Skill.new(name: "Marketing digital", description: "j'ai travaillé en agence", meeting_point: "16 villa gaudelet", price:1, user_id: bapt.id)
s.save!


q = Skill.new(name: "sea", description: "j'ai travaillé dendant deux ans dans une agence Seo", meeting_point: "16 villa gaudelet", price:1, user_id: bapt.id)
q.save!

