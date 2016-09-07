module SuperPowers

  def use_laser_vision
    puts "zap zap"
  end

  def magic_point(superpoint)
    puts "My magic point is #{superpoint}"
  end
end



class Animal 

  include SuperPowers

  attr_accessor :leg, :blood
  def initialize
    @leg = 4
    @blood = "warm"
  end
end


class Primate < Animal

  include SuperPowers
    attr_accessor :special
    def initialize
      super
      @leg = 2
      @special = "tail"
    end
end 

class Chimpanzee < Primate

  include SuperPowers

    attr_accessor :skill
    def initialize
      super
      @skill = "puzzle"
    end
end


class Mammal 
  attr_accessor :food, :blood

  def initialize
    @food = "milk"
    @blood = "warm"
  end
end

class Bat < Mammal

end

# class Amphibian
# end

# class Frog < Amphibian
# end

# baby_mammal = Mammal.new
# baby_bat = Bat.new
# p baby_bat.food

baby_primate = Primate.new
p baby_primate.use_laser_vision
# p baby_primate.blood
p baby_primate.special
p baby_primate
p baby_primate.special = "no_tail"
p baby_primate

baby_primate_2 = Primate.new
p baby_primate_2

# baby_chimpanzee = Chimpanzee.new
# p baby_chimpanzee
# p baby_chimpanzee.skill

# baby_animal = Animal.new

# baby_animal.use_laser_vision
# baby_animal.magic_point("CRY!!!")
# baby_animal.magic_point("dink nen nen!!")

# p baby_chimpanzee.leg
# p baby_chimpanzee.blood
# p baby_chimpanzee.special
# p baby_chimpanzee.skill
# baby_chimpanzee.use_laser_vision
# baby_chimpanzee.magic_point("I can do sudoku")