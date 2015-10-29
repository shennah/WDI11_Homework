# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prince = Artist.where(name: "Prince").first_or_create
alice_cooper = Artist.where(name: "Alice Cooper").first_or_create

trash = Album.where(title: "Trash", year: 1989).first_or_create

poison = Song.where(title: "Poison", artist: alice_cooper, album: trash).first_or_create
bed_of_nails = Song.where(title: "Bed of Nails", artist: alice_cooper, album: trash).first_or_create

glam_metal = Genre.where(title: "Glam Metal").first_or_create

glam_metal.songs = [poison, bed_of_nails]
glam_metal.save

# rake db:seed