require './game'
require 'byebug'

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
@game.solve
byebug
1+1
