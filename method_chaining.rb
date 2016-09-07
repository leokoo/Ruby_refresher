require 'byebug'

# TODO: Refactor for elegance
def shout_backwards(string)
  result = string.upcase.reverse + "!!!"
end

# FIXME: This is convoluted. Refactor for clarity.
def squared_primes(array)
# array.find_all {|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }.map{|p| p*p}
# Select only primes from array
	prime = array.find_all do |x|
				  	(2..x-1).select do |i|
				  		x % i == 0
				  	end
				  	.count == 0
					end
# Square the selected primes and over write the initial array 
 return prime.map {|p| p*p}
 
end

# Driver code... don't edit. This should print a bunch of trues.
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]