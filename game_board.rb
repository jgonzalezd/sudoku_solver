require 'matrix'
require 'byebug'

class GameBoard
  attr_accessor :board
  def initialize(*params)
    @board = Matrix[ *params.each_slice(9).to_a ]
  end

end
