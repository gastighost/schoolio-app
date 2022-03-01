# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "gaston@gmail.com", password: "123456", name: "Gaston",
            description: "Very nice and the best teacher ever", age: 24, school_year: 9,
            years_of_study: 10, learning_type: "Visual", interest: "Sports", user_type: "Teacher")
