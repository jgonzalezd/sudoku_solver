require 'matrix'

class GameBoard

  attr_accessor :board

  def initialize(*params)
    @board = Matrix[ *params.each_slice(9).to_a ]
  end

  def ==(game_board)
    return false unless game_board.respond_to? 'board'
    self.board == game_board.board
  end

end
