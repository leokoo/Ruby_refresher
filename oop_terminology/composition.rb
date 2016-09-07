class Duck
 def swim
  puts " I can swim"
 end
 
 def make_sound
  puts "Quack! Quack!"
 end
end

class Cat
  def make_sound
    puts "Meow! Meow!"
  end
end

class Bird
  def make_sound
    puts "Chip! Chip!"
  end
end

class Animal

  def other_skills(object)
    object.swim
  end

  def make_it_sound(object)
    object.make_sound
  end
end

kitty_cat = Cat.new
kitty_cat.make_sound
little_bird = Bird.new
little_bird.make_sound

animal = Animal.new

animal.make_it_sound(kitty_cat)
animal.make_it_sound(little_bird)
animal.other_skills(Duck.new)