# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts "Importing"

authors = CSV.table('db/seeds/authors.csv', headers: true)
authors.each {|author| Author.create(author.to_hash) }

books = CSV.table('db/seeds/books.csv', headers: true)
books.each {|book| Book.create(book.to_hash) }

puts "Finished!"