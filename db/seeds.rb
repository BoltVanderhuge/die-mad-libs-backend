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
    <input type='hidden' value='User id' id='number'/> 
    <label for='holiday'>Holiday:</label><br>
    <input type='text' required id='holiday' name='holiday'><br>
    <label for='food'>Food:</label><br>
    <input type='text' required id='food' name='food'><br>
    <label for='clothing'>Clothing:</label><br>
    <input type='text' required id='clothing' name='clothing'><br>
    <label for='location'>Location:</label><br>
    <input type='text' required id='location' name='location'><br>
    <input type='submit' value='Create MadLib!' />")
story2 = MadLib.create(story: "A forgetful <span id='input1'></span> gasman named Dieter,<br> Who went <span id='input2'></span>  around his gas heater, <br> <span id='input3'></span>  a leak with his light; <br>  He <span id='input4'></span>. out of sight— <br>  And, as everyone who knows anything about poetry can tell you, he also ruined the meter.", form:'
    <input type="hidden" value="User id" id="number"/> 
    <label for="adjective">Adjective:</label><br>
    <input type="text" required id=" adjective " name=" adjective "><br>
    <label for="present-participle-verb"> Present Participle Verb:</label><br>
    <input type="text" required id="present-participle-verb " name="present-participle-verb "><br>
    <label for="verb-past-tense">Verb Past Tense:</label><br>
    <input type="text" required id="verb-past-tense" name="verb-past-tense"><br>
    <label for="verb">Verb:</label><br>
    <input type="text" required id="verb" name="verb"><br>
    <input type="submit" value="Create MadLib!" />')
story3 = MadLib.create(story: "As I walked through the <span id='input1'></span> where I harvest my <span id='input2'></span>, I take a look at my <span id='input3'></span> and realize she’s very <span id='input4'></span>.", form: '
    <input type="hidden" value="User id" id="number"/> 
    <label for="noun">Noun:</label><br>
    <input type="text" required id="noun" name="noun"><br>
    <label for="food-noun">Food-Related Noun:</label><br>
    <input type="text" required id="food-noun" name="food-noun"><br>
    <label for="posessive-noun">A Noun You Possess:</label><br>
    <input type="text" required id="posessive-noun" name="posessive-noun"><br>
    <label for="adjective">Adjective:</label><br>
    <input type="text" required id="adjective" name="adjective"><br>
    <input type="submit" value="Create MadLib!" />')

    Story4 = MadLib.create(story: "I've seen things you <span id='input1'></span> wouldn't believe. Attack <span id='input2'></span> on fire off the <span id='input3'></span> of Orion. I watched C-beams <span id='input4'></span> in the dark near the <span id='input5'></span> Gate. All those moments will be lost in time, like tears in <span id='input6'></span>. Time to <span id='input7'></span>.",
        form: '
            <input type="hidden" value="User id" id="number"/> 
            <label for="plural noun">Plural Noun:</label><br>
            <input type="text" required id=" plural noun " name=" plural noun "><br>
            <label for="vehicle plural"> Vehicle Plural:</label><br>
            <input type="text" required id=" vehicle plural" name="vehicle plural "><br>
            <label for="body part">Body Part:</label><br>
            <input type="text" required id="body part" name="body part"><br>
            <label for="verb">Verb:</label><br>
            <input type="text" required id="verb" name="verb"><br>
            <label for="proper noun location"> Proper Noun Location:</label><br>
            <input type="text" required id="proper noun location" name="proper noun location"><br>
            <label for="weather">Weather:</label><br>
            <input type="text" required id="weather" name="weather"><br>
            <label for="event">Event:</label><br>
            <input type="text" required id="event" name="event"><br>
            <input type="submit" value="Create MadLib!" />')

            Story4 = MadLib.create(story: "PARTIES: <br> <span id='input1'></span> <br> <span id='input2'></span> <br> MAIN GOALS: 1. <span id='input3'></span> <br>2.<span id='input4'></span>  <br>3.<span id='input5'></span> the task <br>MY IDEAL DRIVER WILL: <br>  Ask me questions like “Which part of this <span id='input6'></span> is the hardest to <span id='input7'></span>?” as opposed to “You <span id='input8'></span>, right?” <br> MY IDEAL NAVIGATOR WILL: <br> <span id='input9'></span>  me <span id='input10'></span>  ",
                form: '
                    <input type="hidden" value="User id" id="number"/> 
                    <label for="name">Name:</label><br>
                    <input type="text" required id="name" name="name "><br>
                    <input type="hidden" value="User id" id="number"/> 
                    <label for="name">Name:</label><br>
                    <input type="text" required id="name" name="name "><br>
                    <label for="verb"> Verb:</label><br>
                    <input type="text" required id=" verb" name="verb "><br>
                    <label for="verb"> Verb:</label><br>
                    <input type="text" required id=" verb" name="verb "><br>
                    <label for="verb"> Verb:</label><br>
                    <input type="text" required id=" verb" name="verb "><br>
                    <label for="noun">Noun:</label><br>
                    <input type="text" required id="noun" name="noun"><br>
                    <label for="verb">Verb:</label><br>
                    <input type="text" required id="verb" name="verb"><br>
                    <label for="verb">Verb:</label><br>
                    <input type="text" required id="verb" name="verb"><br>  <label for="verb">Verb:</label><br>
                    <input type="text" required id="verb" name="verb"><br>  <label for="adverb">Adverb:</label><br>
                    <input type="text" required id="adverb" name="adverb"><br>
                    <input type="submit" value="Create MadLib!" />')
        

text_entry1 = TextEntry.create(mad_lib_id: 1, user_id: 1, user_inputs: "my birthday, steak, socks, beach", title: "Bolt's story")

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "