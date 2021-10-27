require_relative "piece.rb"
require_relative "board.rb"

module Slideable
    DIAGONAL_DIRS = [
        [-1, -1], [+1, +1],
        [+1, -1], [-1, +1]
    ]
    HORIZONTAL_DIRS = [
        [-1, 0], [+1, 0],
        [0, -1], [0, +1]
    ]

    def horizontal_dirs
        DIAGONAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
    end

    # private
    def move_dirs #overwritten by subclass
    end

    def grow_unblocked_moves_in_dir(dx, dy) #helper method to collect all moves in a direction
        new_arr = [] #create an array to collect moves
        current_pos = Piece.pos
        #in a loop: increment the piece's current row & current col to get new positions
        until !new_pos.empty? || !Board.valid_pos?(new_pos)
            row, col = current_pos
            new_pos = [row+dx][col+dy]
            new_arr << new_pos
            current_pos = new_pos
        end
        new_arr
    end
end

