# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Animal.create(name: "Fluffy", breed: "Poodle", species: "Dog", age: 3, birthday: 3.years.ago, trained: true)
Animal.create(name: "Kitters", breed: "Manecoon", species: "Cat", age: 1, birthday: 3.weeks.ago)
