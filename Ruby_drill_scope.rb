
#Write a program that has one local variable local_var defined in the global scope and one method get_local_var defined in the global scope.
# The method should return the value of the local variable. Does it work? What happens if you define a local variable of the same name within the body of the method definition and assign it a different value?

# local_var = "123" ==> doesn't work when call the method

  # THIS_IS_A_CONSTANT = "OMG"
  # $global_var = "LOL"

def get_CONSTANT               # CONSTANT getter and setter in global space
  return THIS_IS_A_CONSTANT
end

# def set_CONSTANT=(val)
#   CONSTANT = val
# end

def get_global_var   # $global_var getter and setter in global space
  return $global_var
end

def set_global_var=(val)
  $global_var = val
end



def get_local_var
  local_var = "234" # ==> works after the local_var is defined within the body method itself
  return local_var
end

# p get_local_var #step 1

#Add a class BasicClass to your program. Duplicate your get_local_var method within the class.

#Now add an instance variable @instance_var to your class and define an instance method get_instance_var for your class that returns the value of @instance_var.

class BasicClass

  THIS_IS_A_CONSTANT = "OMG"
  $global_var = "LOL"
  @@class_var = "quack"

  def initialize
    @instance_var = "789"
 
  end

  def get_local_var
    local_var = "456" # ==> works after the local_var is defined within the body method itself
    return local_var
  end

  def get_instance_var    
    return @instance_var
  end

  def set_instance_var=(val)
    @instance_var = val
  #Try creating two different objects from BasicClass and then using your setter method to give each of them a different value for the @instance_var. Then use your getter method on each to see if they are actually different.
  end

  def self.get_class_var
    return @@class_var
  end

  def self.set_class_var=(val)
    @@class_var = val
  end

  def get_CONSTANT               # CONSTANT getter and setter in global space
  return THIS_IS_A_CONSTANT
  end

  # def set_CONSTANT=(val)
  #   CONSTANT = val
  # end

  def get_global_var   # $global_var getter and setter in global space
    return $global_var
  end

  def set_global_var=(val)
  end

end

new_class = BasicClass.new
new_class1 = BasicClass.new
new_class2 = BasicClass.new

# p "For Class1"
# new_class1.set_instance_var = "10"
# p new_class1.get_instance_var

# p "For Class2"
# new_class2.set_instance_var = "20"
# p new_class2.get_instance_var

p "Get Class Variance"
p BasicClass.get_class_var

p "Set a new Class Variant"
p BasicClass.set_class_var = "Oink"
p BasicClass.get_class_var

# # "if CONSTANT and global_variant is set in global scope & getter/setter method is defined in global scope ==> can get CONSTANT but kenot set CONSTANT --- error (dynamic constant assignment CONSTANT = val; where else getter & setter for $global_var works)
# p get_CONSTANT
# #p set_CONSTANT = "Oh My God" --- CONSTANT is a fix val...kenot SET!! will have error (dynamic  constant assignment CONSTANT = value)
# p get_global_var
# p set_global_var = "Laugh Out Loud"

#p "if CONSTANT and global_variant is set withing class" # also can get CONSTANT only but not set; where else can get & set for $global_var. This is true irregardless the CONSTANT and &global_var is set in the class or in global scope "
# CONSTANT_test = BasicClass.new
# global_test = BasicClass.new

# p CONSTANT_test.get_CONSTANT
# #p CONSTANT_test.set_CONSTANT = "Oh My God"
# p global_test.get_global_var
# p global_test.set_global_var = "Laugh Out Loud"

# p new_class.get_local_var #Step 2: Create a new instance of BasicClass and call the get_local_var method on it. What happens?: It puts out the value of the local variable
# p new_class.get_instance_var #Step 3
# p new_class.set_instance_var=("000") #or new_class.set_instance_var = "000" is the same** new_class.set_instance #Step 4: Try creating a new instance of the class and calling get_instance_var on it. What happens?: It puts out the value of the instance variable