require 'byebug'

class Game
  attr_reader :game_board

  def load_board(*params)
    @game_board = GameBoard.new(*params)
  end

  def solve
    board = @game_board.board
    loop do
      return @game_board if board.find_index(0).nil?

      for i in 0..8
        available_row_choices = [*(0..9)] - board.row(i).to_a
        byebug
        for j in 0..8

        end
      end



    end

  end


end
