
class Document
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  def process_name
        p @name.downcase + " is altered by a method in within a class = ENCAPSULATION"
  end
end

doc = Document.new("LADYBird")
doc.process_name

