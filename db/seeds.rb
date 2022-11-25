# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Car.destroy_all


Car.create(name: "BMW", image: "https://i.pinimg.com/564x/cf/fc/6d/cffc6d43b120740375767c320e0dadb7.jpg", description:"It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.",price: 100,location:"LONDON",duration: 5)
Car.create(name: "Lamborghini", image: "https://i.pinimg.com/564x/ab/40/73/ab407368e68ac35ea869874691931dba.jpg", description:"It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.",price: 200,location:"LONDON",duration: 22)
Car.create(name: "Ferrari", image: "https://i.pinimg.com/564x/b2/57/83/b2578300e131a7864604daabf9e39cd9.jpg", description:"It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.",price: 300,location:"LONDON",duration: 45)
Car.create([
  {name: 'Toyota Xtra', image: 'https://i.pinimg.com/564x/93/d8/9c/93d89c1f9e8c3f3edc1aa268b862246c.jpg', description: 'It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.', price: 450.35, location: 'Kigali', duration: 2    },
  {name: 'Ford Mustang', image: 'https://i.pinimg.com/564x/0d/63/a5/0d63a5525c3f833f6f58418e9d69db5f.jpg', description: 'It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.', price: 400.45, location: 'Istanbul', duration: 2    }
])


User.create(name: "John", email: "a@gmail.com", password: "123456", password_confirmation: "123456")
