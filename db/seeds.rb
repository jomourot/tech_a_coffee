bapt = User.new(email:"user7@gmail.com", password:"xxxxxx", first_name: "Bapt", last_name:"Saint-Aubin")
bapt.save!

jo = User.new(email:"user8@gmail.com", password:"xxxxxx", first_name: "Jo", last_name:"Mourot")
jo.save!

a = Skill.new(name: "seo", description: "J'ai travaillé deux ans dans une agance SEO", meeting_point: "16 villa gaudelet, Paris", price:1, user_id: bapt.id)
a.save!

d = Skill.new(name: "sea", description: "J'ai été manager SEA chez Rocket-Internet", meeting_point: "41 rue des Francs-Bourgeois, Paris", price:1, user_id: jo.id)
d.save!

b = Skill.new(name: "sea", description: "Je dispose de la certification Google adwords", meeting_point: "17 rue des Fossés Saint Marcel, Paris", price:1, user_id:jo.id)
b.save!

e = Skill.new(name: "ruby", description: "Senior Developper, Ruby on Rails", meeting_point: "45 rue Oberkampf, Paris", price:1, user_id: jo.id)
e.save!

s = Skill.new(name: "marketing digital", description: "Online Marketing Manager chez Blablacar", meeting_point: "45 rue de courcelles 75008", price:1, user_id: bapt.id)
s.save!

q = Skill.new(name: "sea", description: "Deux ans d'experience dans une agence Google Adwords", meeting_point: "16 villa gaudelet, Paris", price:1, user_id: bapt.id)
q.save!
