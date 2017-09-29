# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.upto(10) do |i|
	Trainer.create!(fullname: "Trainer#{i}", fitBio:"Alerting about some big baller aert #{i}", height: "5 foot #{i} inch",  age: '#{i}', email: "SS#{i}@example.com", password: "password#{i}", password_confirmation: "password#{i}")
end