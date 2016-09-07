require 'byebug'

def dictionary_sort(arr)
  # Your code here to sort the array
	puts "Congratulations, your dictionary have #{arr.count} words:"
	puts arr.sort { |a,b| a.downcase <=> b.downcase }
end

words_array = [] 

	puts "Type a word: "
	word = gets.chomp
	exit if word == ""
	words_array << word

	while true do
		puts "Type a word (or press enter to finish): "
		word = gets.chomp
		break if word == ""
		words_array << word
	end

dictionary_sort(words_array)






