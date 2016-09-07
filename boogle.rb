require 'byebug'
class BoggleBoard
  def initialize
    @letters = ('A'..'Z').to_a.map! { |x| x == "Q" ? "Qu" : x }
      # @new_board = 
      # [["New board:"],
      # ["_ _ _ _"],
      # ["_ _ _ _"],
      # ["_ _ _ _"],
      # ["_ _ _ _"]]
      # puts @new_board

      @dice = []

   16.times do
    @dice << @letters.sample(6) 
   end    
  end

  def shake!

    puts "Shake Shake Shake"
    @shake_board = []
  

    @dice.each do |x| 
      @shake_board << x.sample(1)
    end

    @check_board = []

    4.times do
      @check_board << @shake_board.shift(4).flatten!
    end

    p @check_board
    
  end

  def canonical(word)
    word.downcase.split("").sort
  end

  def include?
    input = gets.chomp

    byebug
    #check word horizontally
    @check_board.each_with_index do |word, index| 
      if canonical(word.join) == canonical(input)
        p word.join
      end
    end
    #check word vertically
    vertical_words = []
    @check_board.each do|row|
      row.each_with_index do |vertical, index|
        vertical_words << vertical[index]
        byebug
      end
    end
    return vertical_words
  end
end

game = BoggleBoard.new
3.times do
  game.shake!
  game.include?
end

