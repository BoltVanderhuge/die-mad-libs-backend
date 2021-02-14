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
story2 = MadLib.create(story: "A forgetful <span id='input1'></span> gasman named Dieter,<br> Who went <span id='input2'></span>  around his gas heater, <br> <span id='input3'></span>  a leak with his light; <br>  He <span id='input4'></span>. out of sight— <br>  And, as everyone who knows anything about poetry can tell you, he also ruined the meter.")
story3 = MadLib.create(story: "As I walked through the <span id='input1'></span> where I harvest my <span id='input2'></span>, I take a look at my <span id='input3'></span> and realize she’s very <span id='input4'></span>.")

text_entry1 = TextEntry.create(mad_lib_id: 1, user_id: 1, user_inputs: "my birthday, steak, socks, beach", title: "Bolt's story")

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "