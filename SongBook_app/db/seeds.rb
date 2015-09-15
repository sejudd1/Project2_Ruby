# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

songs = Song.create([
	{ name: 'Test of Love', writer: "John Doe", genre: "R&B", file: "url link", like: " ", post: "Catchy song, nice hooks in the Chorus, flip the chorus around and make that a bridge"}, 
	{ name: 'Dance Machine', writer: "Test Test", genre: "Pop", file: "url link", like: " ", post: "Catchy song, nice hooks in the Chorus, great groove"}
	])