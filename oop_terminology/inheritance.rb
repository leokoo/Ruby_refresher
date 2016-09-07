class Parent
  
  def altered
    puts "PARENT altered"
  end

  def test_super
    puts "I'm Super From DAD"
  end

end

class Child < Parent
  def altered
    puts "CHILD, BEFORE PARENT altered"
    super
    puts "CHILD, AFTER PARENT altered"
  end

  def test_super
    super
    puts "I get the above super from DAD"
  end

end

dad = Parent.new
son = Child.new

dad.altered
son.altered

dad.test_super
son.test_super