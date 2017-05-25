def start
	puts "You're in a rainforest at night"
	puts "You find out a little light shining"
	puts "What do you do? Take or go on?"

	print "> "
	decision = $stdin.gets.chomp

	case decision 
		when "take"
			lodge(decision)
		when "go on"
			rainforest(decision)
	end
end

def rainforest(choice)
	puts choice
end

def lodge(choice)
	puts "You're in front of a lodge"
	puts "It's raining"
	puts "Are you open the door or walk around?"
		
	print "> "
	decision = $stdin.gets.chomp

	case decision
		when "open"
			lodge(decision)
		when "walk around"
			rainforest(decision)
		end
end

start
