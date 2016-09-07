class Vars

@@class_var = "class variable value"

def initialize
  @class_ins_var = "class instance variable value"    #class instance variable
   #class  variable
end

def self.class_method
    puts @class_ins_var
    puts @@class_var
end

def instance_method
  p self.diameter
    # puts @class_ins_var
    # puts @@class_var
end
end

# Vars.class_method

# puts "see the difference"

orange_1 = Orange.new(diameter: 10)
orange_2 = Orange.new(diameter: 20)

orange_2.instance_method

# obj.instance_method

class VarsChild < Vars


end

VarsChild.class_method