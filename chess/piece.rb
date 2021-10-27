class Piece
    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, baord, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
    end

    def empty?
        @board[@pos] != nil
    end

    def valid_moves
    end

    def pos=(val)
        @board[@pos] = val
    end

    def symbol
    end

    def move_into_check?(end_pos)
    end
end




