# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.where(title: "Foo").first_or_create
comment1 = post.comments.where(content: "This sux").first_or_create
comment2 = post.comments.where(content: "Nah yeah it's good").first_or_create
