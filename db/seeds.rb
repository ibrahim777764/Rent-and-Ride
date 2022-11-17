# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create(name: "BMW", image: "img", description:"desc",price: 100,location:"LONDON",duration: 5)
Car.create(name: "bb", image: "img2", description:"desc2",price: 200,location:"LONDON",duration: 22)
Car.create(name: "ee", image: "img3", description:"desc3",price: 300,location:"LONDON",duration: 45)
Car.create([
  {name: 'V30', image: 'w0VIBAE', description: 'Efficiency-Hybrid system seamlessly shifts between IC/electric power, 18kmpl overall and Spacious - Comfortable and supportive seats, roomy, good quality cabin materials', price: 450.35, location: 'Kigali', duration: 2    },
  {name: 'MPG Honda', image: '2FAAAABAJ', description: 'It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.', price: 400.45, location: 'Istanbul', duration: 2    }
])