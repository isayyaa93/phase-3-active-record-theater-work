Audition.destroy_all
Role.destroy_all

isaiah = Role.create(character_name: "Isaiah")
chase = Role.create(character_name: "Chase")


puts "roles created"

Audition.create(actor: "Jacky", location: "NYC", hired: false, phone: 123456, role_id: isaiah.id)
Audition.create(actor: "Max", location: "Manhattan", hired: false, phone: 123456, role_id: chase.id)

puts "all auditions created"