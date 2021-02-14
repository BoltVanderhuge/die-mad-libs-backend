# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TextEntry.destroy_all
MadLib.destroy_all
User.destroy_all
TextEntry.reset_pk_sequence
MadLib.reset_pk_sequence
User.reset_pk_sequence


user1 = User.create(name: "Bolt", age: "21")

story1 = MadLib.create(story: "My favorite holiday is <span id='input1'></span>. I can't wait to have <span id='input2'></span> for dinner. I'm wearing my favorite <span id='input3'></span> to the <span id='input4'></span>.", form:"
    <label for='holiday'>Holiday:</label><br>
    <input type='text' id='holiday' name='holiday'><br>
    <label for='food'>Food:</label><br>
    <input type='text' id='food' name='food'><br>
    <label for='clothing'>Clothing:</label><br>
    <input type='text' id='clothing' name='clothing'><br>
    <label for='location'>Location:</label><br>
    <input type='text' id='location' name='location'><br>
    <input type='submit' value='Create MadLib!' />")
story2 = MadLib.create(story: "A forgetful <span id='input1'></span> gasman named Dieter,<br> Who went <span id='input2'></span>  around his gas heater, <br> <span id='input3'></span>  a leak with his light; <br>  He <span id='input4'></span>. out of sight— <br>  And, as everyone who knows anything about poetry can tell you, he also ruined the meter.", form:'
    <label for="adjective">Adjective:</label><br>
    <input type="text" id=" adjective " name=" adjective "><br>
    <label for="present-participle-verb"> Present Participle Verb:</label><br>
    <input type="text" id="present-participle-verb " name="present-participle-verb "><br>
    <label for="verb-past-tense">Verb Past Tense:</label><br>
    <input type="text" id="verb-past-tense" name="verb-past-tense"><br>
    <label for="verb">Verb:</label><br>
    <input type="text" id="verb" name="verb"><br>
    <input type="submit" value="Create MadLib!" />')
story3 = MadLib.create(story: "As I walked through the <span id='input1'></span> where I harvest my <span id='input2'></span>, I take a look at my <span id='input3'></span> and realize she’s very <span id='input4'></span>.", form: '
<label for="holiday">Noun:</label><br>
<input type="text" id="holiday" name="holiday"><br>
<label for="food">Food-Related Noun:</label><br>
<input type="text" id="food" name="food"><br>
<label for="clothing">A Noun You Possess:</label><br>
<input type="text" id="clothing" name="clothing"><br>
<label for="location">Adjective:</label><br>
<input type="text" id="location" name="location"><br>
<input type="submit" value="Create MadLib!" />')

text_entry1 = TextEntry.create(mad_lib_id: 1, user_id: 1, user_inputs: "my birthday, steak, socks, beach", title: "Bolt's story")

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "