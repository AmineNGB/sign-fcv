Training.destroy_all
User.destroy_all
Participant.destroy_all


user = User.new
user.email = "amineneghbel@gmail.com"
user.password = "password"
user.nom = "NEGHBEL"
user.prenom = "Amine"
user.phone = "0612241326"

user.save!

training = Training.new
training.group = "ado"
training.date = "2020-09-24-19-30"


training.save!



Participant.new(training_id: training.id, user_id: user.id)

p "done"