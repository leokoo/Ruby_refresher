require 'byebug'
class BoggleBoard
  def initialize
    @letters = ('A'..'Z').to_a.map! { |x| x == "Q" ? "Qu" : x }
      @new_board = 
      [["New board:"],
      ["_ _ _ _"],
      ["_ _ _ _"],
      ["_ _ _ _"],
      ["_ _ _ _"]]
      puts @new_board

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
    4.times do
      p @shake_board.shift(4).flatten.join
    end
  end

end

game = BoggleBoard.new
3.times do
  game.shake!
end
