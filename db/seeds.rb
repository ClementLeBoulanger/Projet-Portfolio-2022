# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Run seeds !"
puts "***********"
puts "Création des articles"
puts "***********"

Article.create(text: 'Article de test')

puts "***********"
puts "Création des projets"
puts "***********"

Projet.create(title: 'test', description: 'Description test', github: 'Link Github test')

puts "Seeds are done !"
