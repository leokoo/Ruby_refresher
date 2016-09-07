

def deaf_aunty
		while true
		# keep looping user input till exit			
			user_input = gets.chomp
		# if user input is "I love ya, aunty, but I've got to go" ; exit
			if user_input == "I love ya, aunty, but I've got to go"
				exit
			elsif user_input == ""
				puts "Come on, please input something"
		# if user input is not shouting (small alphabet), aunty reply "HUH?! SPEAK UP, SANDRA!"
			elsif user_input != user_input.upcase
				puts "HUH?! SPEAK UP, SANDRA!"
		# if user input is shouting (CAPITAL), aunty reply "NO, WE CAN'T DO THAT!"
			elsif user_input == user_input.upcase
				puts "NO, WE CAN'T DO THAT!"

			end
		end
end

def deaf_aunty2

		puts 'deaf_aunty'

		loop do
		  user_input = gets.chomp
		    if user_input == user_input.upcase then
			  puts "NO, WE CAN'T DO THAT!"
		    else
		      puts "HUH?! SPEAK UP, SANDRA!"
		    end
		  break if user_input == "I love ya, aunty, but I've got to go"
		end
		   
		puts 'normal exit requested'
end

=begin
puts 'deaf_aunty'
puts 'wanna hug you'
loop do
  user_input = gets.chomp
    if user_input == user_input.upcase then
	  puts "*hugs*"
    else
      puts "*pinches cheeks*"
    end
  break if user_input == "I love ya, aunty, but I've got to go"
end
   
puts 'normal exit requested'
=end
