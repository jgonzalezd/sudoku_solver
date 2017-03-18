require './game'
require './game_board'

describe GameBoard do  
  it "should correctly solve the board" do
    @game = Game.new
    # Each '0' is a blank cell
    @game.load_board 0, 0, 8, 3, 4, 2, 9, 0, 0,
                     0, 0, 9, 0, 0, 0, 7, 0, 0,
                     4, 0, 0, 0, 0, 0, 0, 0, 3,
                     0, 0, 6, 4, 7, 3, 2, 0, 0,
                     0, 3, 0, 0, 0, 0, 0, 1, 0,
                     0, 0, 2, 8, 5, 1, 6, 0, 0,
                     7, 0, 0, 0, 0, 0, 0, 0, 8,
                     0, 0, 4, 0, 0, 0, 1, 0, 0,
                     0, 0, 3, 6, 9, 7, 5, 0, 0
    @solved_board = GameBoard.new 6, 7, 8, 3, 4, 2, 9, 5, 1,
                                  3, 2, 9, 1, 8, 5, 7, 6, 4,
                                  4, 5, 1, 7, 6, 9, 8, 2, 3,
                                  5, 1, 6, 4, 7, 3, 2, 8, 9,
                                  8, 3, 7, 9, 2, 6, 4, 1, 5,
                                  9, 4, 2, 8, 5, 1, 6, 3, 7,
                                  7, 6, 5, 2, 1, 4, 3, 9, 8,
                                  2, 9, 4, 5, 3, 8, 1, 7, 6,
                                  1, 8, 3, 6, 9, 7, 5, 4, 2

    @game.solve.should == @solved_board
  end

  it "should correctly solve the board" do
    @game = Game.new
    # Each '0' is a blank cell
    @game.load_board 0, 0, 4, 0, 0, 0, 5, 0, 0,
                     0, 7, 0, 2, 0, 0, 3, 6, 0,
                     8, 0, 0, 0, 0, 1, 0, 0, 0,
                     6, 2, 9, 0, 0, 0, 0, 3, 0,
                     0, 0, 0, 0, 6, 0, 0, 0, 0,
                     0, 4, 0, 0, 0, 0, 6, 1, 8,
                     0, 0, 0, 7, 0, 0, 0, 0, 6,
                     0, 1, 3, 0, 0, 4, 0, 2, 0,
                     0, 0, 2, 0, 0, 0, 4, 0, 0
    @solved_board = GameBoard.new 2, 3, 4, 9, 7, 6, 5, 8, 1,
                                  9, 7, 1, 2, 8, 5, 3, 6, 4,
                                  8, 5, 6, 4, 3, 1, 2, 9, 7,
                                  6, 2, 9, 1, 4, 8, 7, 3, 5,
                                  1, 8, 5, 3, 6, 7, 9, 4, 2,
                                  3, 4, 7, 5, 9, 2, 6, 1, 8,
                                  4, 9, 8, 7, 2, 3, 1, 5, 6,
                                  7, 1, 3, 6, 5, 4, 8, 2, 9,
                                  5, 6, 2, 8, 1, 9, 4, 7, 3
                                  
    @game.solve.should == @solved_board
  end
end