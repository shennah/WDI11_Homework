# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Album.destroy_all
Song.destroy_all

prince = Artist.create(name: "Prince")
alice_cooper = Artist.create(name: "Alice Cooper")

trash = Album.create(title: "Trash", year: 1989)

poison = Song.create(title: "Poison", artist: alice_cooper, album: trash)
bed_of_nails = Song.create(title: "Bed of Nails", artist: alice_cooper, album: trash)
