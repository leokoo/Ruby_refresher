local_var = 123

  class Learn_var

    attr_reader :value

      @@class_var = "789"
    
    def initialize(value)
      @value = value
    end

    def self.i_am_local
      inside_class_var = 456
      p inside_class_var
      p @@class_var
    end

  end

Learn_var.i_am_local
test = Learn_var.new("I'm an instance")
p test.value