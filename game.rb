require './game_board'

class Game
  attr_reader :game_board
  attr_reader :number_set

  def initialize
    @number_set = [*(0..9)]
  end

  def load_board(*params)
    @game_board = GameBoard.new(*params)
  end

  def solve
    solve_game(game_board.board)
    game_board
  end

private
  def solve_game(board)
    if is_solved?(board)
      game_board.board = board
      return true
    end

    for i in 0..8   #traverse rows
      available_row_choices = number_set - board.row(i).to_a
      for j in 0..8 #traverse columns
        unless board[i,j] != 0
          available_col_choices = number_set - board.column(j).to_a
          available_pos_choices = available_row_choices &
                                  available_col_choices &
                                  available_block_choices(board, [i,j])
          available_pos_choices.each do |choice|
            updated_board = update_board(board, [i,j], choice)
            return true if solve_game(updated_board)
          end
          return false
        end #unless
      end # for j
    end # for i
  end # solve_game

  def update_board(board, position, value)
    tmp_board = board.to_a
    tmp_board[position.first][position.last] = value
    Matrix[ *tmp_board ]
  end

  def available_block_choices(board, position)
    block = get_block(board, position)
    number_set - block.to_a.flatten.select{|e| e != 0}
  end
  
  def get_block(board, position)
    index_i = (position.first / 3) * 3
    index_j = (position.last / 3) * 3
    board.minor(index_i..(index_i+2), index_j..(index_j+2))
  end

  def is_solved?(board)
    board.find_index(0).nil?
  end
end # class












def solve_game(board)
  for i in 0..8
    available_row_choices = number_set - board.row(i).to_a
    for j in 0..8
      unless board[i,j] != 0
        available_col_choices = number_set - board.column(j).to_a
        available_pos_choices = available_row_choices & available_col_choices
        if available_pos_choices.size > 0
          available_pos_choices.each do |choice|
            update_board([i,j], choice)
            if solve_game(game_board.board)
              available_row_choices.delete(choice)
              return true
            else
              return false
            end #if
          end #each
        else
          byebug
        end # if
        p game_board.board
      end #unless
    end # for j
  end # for i
end # solve_game
