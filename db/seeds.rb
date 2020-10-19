# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Topic.destroy_all

verb = Category.create(name: "verb")
food = Category.create( name: "food")
conversation = Category.create(name: "conversation")

Topic.create(title: "verb", content: "abrir-to open, ayudar-to help", category_id: verb.id)

