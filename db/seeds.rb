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

story1 = MadLib.create(story: "Here is tomorrow's weather report for <span id='input'></span>
    and vicinity. Early tomorrow, a <span id='input'></span> front will
    collide with a mass of hot <span id='input'></span> moving from the
    north. This means we can expect <span id='input'></span> winds and
    occasional <span id='input'></span> by late afternoon. Wind velocity will
    be <span id='input'></span> miles an hour, and the high temperature should
    be around <span id='input'></span> degrees. So, if you're going out, you had
    better plan on wearing your <span id='input'></span>.", form:"
    <input type='hidden' value='User id' id='number'/> 
    <label for='Geographic-Location'>Geographic Location:</label><br>
    <input type='text' required id='Geographic-Location' name='Geographic-Location'><br>
    <label for='Adjective'>Adjective:</label><br>
    <input type='text' required id='Adjective' name='Adjective'><br>
    <label for='Plural-Noun'>Plural Noun:</label><br>
    <input type='text' required id='Plural-Noun' name='Plural-Noun'><br>
    <label for='Adjective'>Adjective:</label><br>
    <input type='text' required id='Adjective' name='Adjective'><br>
    <label for='Plural-Noun'>Plural Noun:</label><br>
    <input type='text' required id='Plural-Noun' name='Plural-Noun'><br>
    <label for='Number'>Number:</label><br>
    <input type='number' required id='Number' name='Number'><br>
    <label for='Number'>Number:</label><br>
    <input type='number' required id='Number' name='Number'><br>
    <label for='Article-of-Clothing'>Article of Clothing:</label><br>
    <input type='text' required id='Article-of-Clothing' name='Article-of-Clothing'><br>
    <input type='submit' value='Create MadLib!' />", title: "Weather Report", description:"Check out today's forecast", picture: "/assets/weather.png")
story2 = MadLib.create(story: "A forgetful <span id='input'></span> gasman named Dieter,<br> Who went <span id='input'></span>  around his gas heater, <br> <span id='input'></span>  a leak with his light; <br>  He <span id='input'></span>. out of sight— <br>  And, as everyone who knows anything about poetry can tell you, he also ruined the meter.", form:'
    <input type="hidden" value="User id" id="number"/> 
    <label for="adjective">Adjective:</label><br>
    <input type="text" required id=" adjective " name=" adjective "><br>
    <label for="present-participle-verb"> Present Participle Verb:</label><br>
    <input type="text" required id="present-participle-verb " name="present-participle-verb "><br>
    <label for="verb-past-tense">Verb Past Tense:</label><br>
    <input type="text" required id="verb-past-tense" name="verb-past-tense"><br>
    <label for="verb">Verb:</label><br>
    <input type="text" required id="verb" name="verb"><br>
    <input type="submit" value="Create MadLib!" />', title: "Limerick", description: "Top of the MadLibs to you", picture: "https://d5qsyj6vaeh11.cloudfront.net/images/destinations/limerick-top-five-experiences/limerick-5-things-new-we-rec.jpg")
story3 = MadLib.create(story: "As I walked through the <span id='input'></span> where I harvest my <span id='input'></span>, I take a look at my <span id='input'></span> and realize she’s very <span id='input'></span>.", form: '
    <input type="hidden" value="User id" id="number"/> 
    <label for="noun">Noun:</label><br>
    <input type="text" required id="noun" name="noun"><br>
    <label for="food-noun">Food-Related Noun:</label><br>
    <input type="text" required id="food-noun" name="food-noun"><br>
    <label for="posessive-noun">A Noun You Possess:</label><br>
    <input type="text" required id="posessive-noun" name="posessive-noun"><br>
    <label for="adjective">Adjective:</label><br>
    <input type="text" required id="adjective" name="adjective"><br>
    <input type="submit" value="Create MadLib!" />', title:"Amish Mad Libs", description: "Parody of a Parody", picture: "https://upload.wikimedia.org/wikipedia/commons/0/0f/Lancaster_County_Amish_03.jpg")

    story4 = MadLib.create(story: "I've seen things you <span id='input'></span> wouldn't believe. Attack <span id='input'></span> on fire off the <span id='input'></span> of Orion. I watched C-beams <span id='input'></span> in the dark near the <span id='input'></span> Gate. All those moments will be lost in time, like tears in <span id='input'></span>. Time to <span id='input'></span>.",
        form: '
            <input type="hidden" value="User id" id="number"/> 
            <label for="plural noun">Plural Noun:</label><br>
            <input type="text" required id="plural noun" name=" plural noun "><br>
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
            <input type="submit" value="Create MadLib!" />', title:"Blade Funner", description: "Do Androids Dream of Electronic MadLibs?", picture: "http://igeekout.net/wp-content/uploads/2016/06/RoyBatty.jpg")

        story5 = MadLib.create(story: "PARTIES: <br> <span id='input'></span> <br> <span id='input'></span> <br> MAIN GOALS: 1. <span id='input'></span> <br>2.<span id='input'></span>  <br>3.<span id='input'></span> the task <br>MY IDEAL DRIVER WILL: <br>  Ask me questions like “Which part of this <span id='input'></span> is the hardest to <span id='input'></span>?” as opposed to “You <span id='input'></span>, right?” <br> MY IDEAL NAVIGATOR WILL: <br> <span id='input'></span>  me <span id='input'></span> <br> COMMUNICATION - WE WILL STRIVE TO <br> <span id='input'></span> with each other at least 3x a <span id='input'></span> <br> discuss <span id='input'></span> for a <span id='input'></span> we’re in charge of before <span id='input'></span> it on our own <br>NOTES <br>I’m at my best when I take a <span id='input'></span> min. <span id='input'></span> every <span id='input'></span> min.",
            form: "
            <input type='hidden' value='User id' id='number'/> 
            <label for='name'>Person's Name:</label><br>
            <input type='text' required id='name' name='name '><br>
            <label for='name'>Person's Name:</label><br>
            <input type='text' required id='name' name='name '><br>
            <label for='verb'> Verb:</label><br>
            <input type='text' required id=' verb' name='verb '><br>
            <label for='verb'> Verb:</label><br>
            <input type='text' required id=' verb' name='verb '><br>
            <label for='verb'> Verb:</label><br>
            <input type='text' required id=' verb' name='verb '><br>
            <label for='noun'>Noun:</label><br>
            <input type='text' required id='noun' name='noun'><br>
            <label for='verb'>Verb:</label><br>
            <input type='text' required id='verb' name='verb'><br>
            <label for='verb'>Verb:</label><br>
            <input type='text' required id='verb' name='verb'><br>  
            <label for='verb'>Verb:</label><br>
            <input type='text' required id='verb' name='verb'><br>  
            <label for='adverb'>Adverb:</label><br>
            <input type='text' required id='adverb' name='adverb'><br>
            <label for='verb'>Verb:</label><br>
            <input type='text' required id='verb' name='verb'><br>  
            <label for='noun'>Period of Time:</label><br>
            <input type='text' required id='noun' name='noun'><br>
            <label for='noun'>Plural Noun:</label><br>
            <input type='text' required id='noun' name='noun'><br>
            <label for='noun'>Noun:</label><br>
            <input type='text' required id='noun' name='noun'><br>
            <label for='verb'>Verb Ending in ING:</label><br>
            <input type='text' required id='verb' name='verb'><br>    
            <input type='submit' value='Create MadLib!' />", title:'Pairing Program', description: 'Please fill out this MadLib before starting your MadLibs', picture: 'https://upload.wikimedia.org/wikipedia/commons/a/af/Pair_programming_1.jpg', title:"Pairing Program", description: "Please fill out this MadLib before starting your MadLibs", picture: "https://upload.wikimedia.org/wikipedia/commons/a/af/Pair_programming_1.jpg")
        
                story6 = MadLib.create(story: "You know the thing about a <span id='input'></span>, he's got lifeless eyes. <span id='input'></span> eyes like a <span id='input'></span>'s eyes. When he comes at ya, he doesn't seem to be living until he <span id='input'></span> ya and those black <span id='input'></span>s roll over and white and then, ah, then you hear that terrible high-pitch <span id='input'></span>. The ocean turns <span id='input'></span> and despite all the <span id='input'></span> and <span id='input'></span>, they all come in and they <span id='input'></span> you to pieces.", form:"
                    <input type='hidden' value='User id' id='number'/> 
                    <label for='animal'>Animal:</label><br>
                    <input type='text' required id='animal' name='animal'><br>
                    <label for='Color'>Color:</label><br>
                    <input type='text' required id='Color' name='Color'><br>
                    <label for='A-Toy'>A Toy:</label><br>
                    <input type='text' required id='A-Toy' name='A-Toy'><br>
                    <label for='Verb-Ending-In-S'>Verb Ending In 'S':</label><br>
                    <input type='text' required id='Verb-Ending-In-S' name='Verb-Ending-In-S'><br>
                    <label for='Body-Part'>Body Part:</label><br>
                    <input type='text' required id='Body-Part' name='Body-Part'><br>
                    <label for='ING-Verb'>ING Verb:</label><br>
                    <input type='text' required id='ING-Verb' name='ING-Verb'><br>
                    <label for='Color'>Color:</label><br>
                    <input type='text' required id='Color' name='Color'><br>
                    <label for='ING-Verb'>ING Verb:</label><br>
                    <input type='text' required id='ING-Verb' name='ING-Verb'><br>
                    <label for='ING-Verb'>ING Verb:</label><br>
                    <input type='text' required id='ING-Verb' name='ING-Verb'><br>
                    <label for='Verb'>Verb:</label><br>
                    <input type='text' required id='Verb' name='Verb'><br>
                    <input type='submit' value='Create MadLib!' />", title: "Jaws", description:"Quint's a little confused", picture: "assets/jaw.jpg")
                
                    story7 = MadLib.create(story: "Thank you, <span id='input'></span>, it’s been a real <span id='input'></span> week, at the beginning I was feeling very <span id='input'></span> but at the end I am in a place where I feel just <span id='input'></span>. The lecture by <span id='input'></span> really <span id='input'></span> the whole <span id='input'></span> concept to me. I'm really looking forward to the weekend so I can just <span id='input'></span>. I also want to shout out my partner this week <span id='input'></span> they were really <span id='input'></span> to  <span id='input'></span> with. I also want to say '<span id='input'></span>' to everyone in the cohort I couldn’t have <span id='input'></span> without all of you. Now everyone put your <span id='input'></span> in and say:<br>‘What the <span id='input'></span>!", form:"
                        <input type='hidden' value='User id' id='number'/> 
                        <label for='Name'>Name:</label><br>
                        <input type='text' required id='Name' name='Name'><br>
                        <label for='Adjective'>Adjective:</label><br>
                        <input type='text' required id='Adjective' name='Adjective'><br>
                        <label for='Adjective'>Adjective:</label><br>
                        <input type='text' required id='Adjective' name='Adjective'><br>
                        <label for='Adjective'>Adjective:</label><br>
                        <input type='text' required id='Adjective' name='Adjective'><br>
                        <label for='Persons-Name'>Person's Name:</label><br>
                        <input type='text' required id='Persons-Name' name='Persons-Name'><br>
                        <label for='Verb-Ending-In-ED'>Verb Ending In ED:</label><br>
                        <input type='text' required id='Verb-Ending-In-ED' name='Verb-Ending-In-ED'><br>
                        <label for='Noun'>Coding Related Noun:</label><br>
                        <input type='text' required id='Noun' name='Noun'><br>
                        <label for='Verb'>Verb:</label><br>
                        <input type='text' required id='Verb' name='Verb'><br>
                        <label for='Persons-Name'>Person's Name:</label><br>
                        <input type='text' required id='Persons-Name' name='Persons-Name'><br>
                        <label for='Adjective'>Adjective:</label><br>
                        <input type='text' required id='Adjective' name='Adjective'><br>
                        <label for='Verb'>Verb:</label><br>
                        <input type='text' required id='Verb' name='Verb'><br>
                        <label for='Expression'>Expression:</label><br>
                        <input type='text' required id='Expression' name='Expression'><br>
                        <label for='Verb-Ending-In-ED'>Verb Ending In ED:</label><br>
                        <input type='text' required id='Verb-Ending-In-ED' name='Verb-Ending-In-ED'><br>
                        <label for='Body-Part'>Body Part:</label><br>
                        <input type='text' required id='Body-Part' name='Body-Part'><br>
                        <label for='Noun'>Noun:</label><br>
                        <input type='text' required id='Noun' name='Noun'><br>
                        <input type='submit' value='Create MadLib!' />", title: "Friday Feelz", description:"Can't Think of What to Say?", picture: "/assets/feelz.png")

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "