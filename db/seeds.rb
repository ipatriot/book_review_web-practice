# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


book_1 = Book.create(title: "Pedro Paramo", author: "Juan Rulfo", isbn: "124655", description: "Excelente libro", genre: "Clasico")

book_2 = Book.create(title: "Laberinto de la Soledad", author: "Octavio Paz", isbn: "224655", description: "Excelente libro, describe Mexico", genre: "Ensayo")

book_3 = Book.create(title: "Romancero Gitano", author: "Federico Garcia Lorca", isbn: "324655", description: "Excelente libro de Poesia", genre: "Poesia")
