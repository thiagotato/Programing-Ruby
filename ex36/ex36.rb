def start
  puts "You're in a rainforest at night."
  puts "You find out a little light shining."
	puts "What do you do? Take or go on?"

	print "> "
	decision = $stdin.gets.chomp.downcase

	case decision 
		when "take"
			lodge(decision)
		when "go on"
			rainforest(decision)
    else
      puts "I don't know what it means.", "\n"
      start
	end
end

def rainforest(choice)
  puts "When you start walk you ear a noise."
  puts "There's a elephat eating mangos."
  puts "You are hungry !"
  puts "Do you take the mangos or screeming?"

  print "> "
  outside = $stdin.gets.chomp.downcase

  if outside == "take"
    puts "The elephant doesn't care about you. You eat and could be rescured."
  elsif outside == "screeming"
    die("The elephant gets annoyed and smash you.")
  else
    puts "I don't know that", "\n"
    rainforest(choice)
  end
end

def lodge(choice)
  puts "You're in front of a lodge."
  puts "It's raining."
	puts "Are you open the door or walk around?"
		
	print "> "
	decision = $stdin.gets.chomp.downcase

	case decision
		when "open"
      puts "Inside is cozy."
      puts "There's an smell of meat."
      puts "You take a look around and see two doors"
      puts "Do you get right or left?"

      print "> "
      inside = $stdin.gets.chomp.downcase

      if inside == "right"
        puts "There is a Komodo dragon."
        puts "It notices you."
        puts "Do you run or kick it?"
        
        print "> "
        komodo = $stdin.gets.chomp.downcase

        if komodo == "run"
          die("The Dragon take your legs off.")
        elsif komodo == "kick it"
          die("The Dragon take you down and eats your body.")
        else
          die("Your head gets hitted by a log.")
        end

      elsif inside == "left"
        puts "There's a Jaguart eatting an animal."
        puts "You can hide, you can run."
        puts "What do you do?"

        print "> "
        jaguart = $stdin.gets.chomp.downcase

        if jaguart == "hide"
          puts "You passed 3 hours hid and the Jaguart goes away, good job ! You're alive."
        elsif jaguart == "run"
          die("A rhino get scary of you and hit you in your back.")
        else
          die("You get back to the forest and died with dehydration.")
        end
      
      else
        die("A jaguart get out of a room and eats you face.")
      end

		when "walk around"
			rainforest(decision)
    else
      puts "Are you kidding?", "\n"
      lodge(choice)
		end
end

def die(reason)
  puts reason
end

start
