class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        
        @null_piece = ""
    end

    
    def populate
        @rows[1].map! { |ele| :P } #pawn
        @rows[6].map! { |ele| :P } #pawn

        @rows[0][0], @rows[0][7], @rows[7][0], @rows[7][7] = :R, :R, :R, :R #rook
        @rows[0][1], @rows[0][6], @rows[7][1], @rows[7][6] = :Kn, :Kn, :Kn, :Kn #knight
        @rows[0][2], @rows[0][5], @rows[7][2], @rows[7][5] = :B, :B, :B, :B, #bishop
        @rows[0][3], @rows[7][3] = :K, :K #king
        @rows[0][4], @rows[7][4] = :Q, :Q #queen
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos) #needs color argument
        raise "error" if @rows[start_pos].empty? || !valid_pos?(end_pos)

        piece = @rows[start_pos]
        @rows[start_pos] = nil
        @rows[end_pos] = piece

    end

    def valid_pos?(pos)
        row, col = pos
        if  (row < 0 || col < 0) || (row > 7 || col > 7)
            return false
        else
            return true
        end
    end

    def add_piece(piece, pos)

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end

    private
    attr_reader :null_piece
end