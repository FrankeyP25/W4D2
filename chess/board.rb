class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        
        @null_piece = ""
    end

    
    def populate_rows
    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)

    end

    # def valid_pos?(pos)

    # end

    # def add_piece(piece, pos)

    # end

    # def dup

    # end

    # def move_piece!(color, start_pos, end_pos)

    # end

    # private
    # attr_reader :null_piece
end