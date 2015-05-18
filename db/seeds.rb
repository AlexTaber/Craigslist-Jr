# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jobs = Category.create(title: "Jobs")
housing = Category.create(title: "Housing")
books = Category.create(title: "Books")
penguins = Category.create(title: "Penguins")

Article.create(title: "Would you like to make all the money?", description:"You would, wouldn't you!", category_id: jobs.id )
Article.create(title: "Free Penguin!", description:"The adorability is such", category_id: penguins.id )
Article.create(title: "Antique Books Abound", description:"Several million years old!", category_id: books.id )

Article.create(title: "Cardboard Box in the City!", description:"A mere $87456782145789 per month!", category_id: housing.id )

Article.create(title: "Work for free!", description:"Money is for chumps anyhow", category_id: jobs.id )
