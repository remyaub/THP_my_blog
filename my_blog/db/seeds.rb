# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do
    user = User.create!({first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, 
    email: Faker::Internet.email})
end


10.times do
    category = Category.create!({name: Faker::Football.competition})
end


10.times do
    article = Article.create!({title: Faker::GameOfThrones.character, content: Faker::GameOfThrones.quote, 
    category: Category.all[rand(Category.all.size-1)]})
end


15.times do
    commentary = Commentary.create!({content: Faker::HeyArnold.quote, user: User.all[rand(User.all.size-1)], 
    article: Article.all[rand(Article.all.size-1)]})
end


10.times do
    like = Like.create!({user: User.all[rand(User.all.size-1)], article: Article.all[rand(Article.all.size-1)]})
end