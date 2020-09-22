Session.destroy_all
User.destroy_all
Participant.destroy_all


user = User.new
user.email = "amineneghbel@gmail.com"
user.password = "password"
user.nom = "NEGHBEL"
user.prenom = "Amine"
user.phone = "0612241326"

user.save!

session = Session.new
session.group = "ado"
session.date = "2020-09-22-19-30"
session.time = "09/22/2020 19:30"

session.save!



Participant.new(session_id: session.id, user_id: user.id)

p "done"