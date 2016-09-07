# Answer These Questions:
require "byebug"

class Oven

  def start_cooking

    puts "Press enter to close the oven door and start cooking"
    user_input = gets.chomp
      if user_input == ""
        puts "Baking........."
        @put_in_time = Time.now  
      end
  end

  def cookies_status(cooking_time, cookies)
      puts cookies
    if @cooking_time < cookies.cooking_time
      puts "Your cookies are still doughy"
    elsif @cooking_time * 0.5 < cookies.cooking_time
      puts "Your cookies are almost_ready"
      # puts "Press enter to continue baking"
      # user_input = gets.chomp
      # if user_input == ""
      #   @cooking_time +=1 until @cooking_time == cookies.cooking_time
      # end
      # puts "Your cookies are ready!"
    elsif @cooking_time == cookies.cooking_time
      puts "Your cookies are ready!"
    else
      puts "Opps..Your cookies are burnt!"
    end
  end

  def lets_cook(cookies)
    start_cooking
    puts "Press enter to stop cooking and take cookies out from oven"
    user_input = gets.chomp
    if user_input == ""
      @take_out_time = Time.now
      puts "Cookies out from oven!"
      @cooking_time = @take_out_time.sec - @put_in_time.sec
      # puts "You baked your cookies for #{cooking_time} seconds"
      cookies_status(@cooking_time, cookies)
    end
    # cookies_status
  end
end

class Cookies < Oven
end

class ChocoCookies < Cookies
  attr_reader :cooking_time

  def initialize(cooking_time=7)
      @cooking_time = cooking_time
  end
end

class AppleCookies < Cookies
  attr_reader :cooking_time

  def initialize(cooking_time=4)
      @cooking_time = cooking_time
  end
end

oven = Oven.new

cookies = Cookies.new

coco = ChocoCookies.new
apple = AppleCookies.new

puts "Please select cooking menu: 1 for ChocoCookies, 2 for Apple Cookies"
user_input = gets.chomp
if user_input == "1"
cookies.lets_cook(coco)
elsif user_input =="2"
cookies.lets_cook(apple)
else
puts "Invalid Input"
end

