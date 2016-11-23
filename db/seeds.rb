bapt = User.new(email:"user6@gmail.com", password:"xxxxxx", first_name: "Bapt", last_name:"Saint-Aubin")
bapt.save!

jo = User.new(email:"user5@gmail.com", password:"xxxxxx", first_name: "Jo", last_name:"Mourot")
jo.save!

a = Skill.new(name: "seo", description: "j'ai travaillé dendant deux ans dans une agence Seo", meeting_point: "16 villa gaudelet Paris", price:1, user_id: bapt.id)
a.save!

d = Skill.new(name: "sea", description: "j'ai travaillé dendant deux ans dans une agence sea", meeting_point: "41 rue des Francs-Bourgeois Paris", price:1, user_id: jo.id)
d.save!

b = Skill.new(name: "sea", description: "Je connais très bien Google adwords", meeting_point: "17 rue des Fossés Saint Marcel Paris", price:1, user_id:jo.id)
b.save!

e = Skill.new(name: "Ruby", description: "j'ai fait le wagon ", meeting_point: "45 rue Oberkampf Paris", price:1, user_id: jo.id)
e.save!

s = Skill.new(name: "Marketing digital", description: "j'ai travaillé en agence", meeting_point: "45 rue de Courcelle Paris", price:1, user_id: bapt.id)
s.save!

q = Skill.new(name: "sea", description: "j'ai travaillé dendant deux ans dans une agence Seo", meeting_point: "16 villa gaudelet Paris", price:1, user_id: bapt.id)
q.save!
