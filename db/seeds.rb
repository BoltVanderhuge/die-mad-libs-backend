# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
MadLib.destroy_all
TextEntry.destroy_all

user1 = User.create(name: "Bolt", age: "21")

story1 = MadLib.create(story: "My favorite holiday is <span id='input1'></span>. I can't wait to have <span id='input2'></span> for dinner. I'm wearing my favorite <span id='input3'></span> to the <span id='input4'></span>.")

text_entry1 = TextEntry.create(mad_lib_id: 1, user_id: 1, user_inputs: "my birthday, steak, socks, beach", title: "Bolt's story")

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "