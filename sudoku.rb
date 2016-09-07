require 'byebug'
class Sudoku
  def initialize(board_string)
    @string = board_string
    @board = @string.split("").each_slice(9).to_a
    @complete = %w(1 2 3 4 5 6 7 8 9)
  end

  def solve!
    
    @board.each_with_index do |line, row|
      line.each_with_index do |cell,col|
        if @board[row][col] == "0"
          coor = []
          coor << row
          coor << col
          potential_row_numbers = get_row_numbers(coor)
          potential_col_numbers = get_col_numbers(coor)
          potential_block_numbers = get_block(coor)

          answer = potential_row_numbers & potential_col_numbers & potential_block_numbers

          @board[row][col] = answer[0].to_s
        end
      end
    end
  end

  # Returns a string representing the current state of the board
  # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    @board.each do |line|
      p line
    end
  end

  def get_row_numbers(coor)
    x = coor[0]
    y = coor[1]
    line = @board[x]
    remain = @complete - line
    return remain
  end

  def get_col_numbers(coor)
    x = coor[0]
    y = coor[1]
    line = @board.transpose[y]
    remain = @complete - line
    return remain
  end

  def get_block(coor)
    x = coor[0]
    y = coor[1]

    x = x/3
    y = y/3

    x = get_block_position(x)
    y = get_block_position(y)
    array = []
    x.each do |index_x|
      y.each do |index_y|
        array << @board[index_x][index_y]
      end
    end
    array = @complete - array
    return array
  end

  def get_block_position(index)
    if index == 0
      return coor_x = (0..2)
    elsif index == 1
      return coor_x = (3..5)
    elsif index == 2
      return coor_x = (6..8)
    end
  end
end

# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
#board_string = File.readlines('sample.unsolved.txt').first.chomp
board_string = "609238745274561398853947621486352179792614583531879264945723816328190457167485932"
game = Sudoku.new(board_string)

# Remember: this will just fill out what it can and not "guess"
game.solve!

game.board