Training.destroy_all
User.destroy_all
Participant.destroy_all


user = User.new
user.email = "thao@gmail.com"
user.password = "password"
user.nom = "DUONG"
user.prenom = "Thao"
user.phone = "06XXXXXXXX"

user.save!

user2 = User.new
user2.email = "amine@gmail.com"
user2.password = "password"
user2.nom = "NEGHBEL"
user2.prenom = "Amine"
user2.phone = "0612241326"

user2.save!

10.times do 
    Training.new(group: "ado", date: Time.now).save
end

Participant.new(training_id: 1, user_id: user2.id).save
Participant.new(training_id: 2, user_id: user2.id).save
Participant.new(training_id: 3, user_id: user2.id).save
Participant.new(training_id: 4, user_id: user2.id).save

p "done"