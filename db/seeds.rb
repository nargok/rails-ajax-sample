# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  book = Book.create({
                         title: Faker::Book.title,
                         publish: '技術評論社'
                     })

  puts "\"#{book.title}\ has created!"
end

5.times do
  book = Book.create({
                         title: Faker::Book.title,
                         publish: '秀和システム'
                     })

  puts "\"#{book.title}\ has created!"
end