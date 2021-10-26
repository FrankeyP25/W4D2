require_relative "piece.rb"

class Knight < Piece
    include Stepable
    def initialize(color, baord, pos)
        super(color, baord, pos)
    end

    def symbol
    end

    protected
    def move_diffs
    end
end

class King < Knight
    include Stepable
    def initialize(color, baord, pos)
        super(color, baord, pos)
    end

    def symbol
    end

    protected
    def move_diffs
    end
end

class Pawn < Piece
    def initialize(color, baord, pos)
        super(color, baord, pos)
    end

    def symbol
    end

    def moves
    end

    private
    def at_start_row?
    end

    def forward_direction
    end

    def forward_steps
    end

    def side_attacks
    end

end

class NullPiece < Piece
    def initialize(color, baord, pos)
        super(color, baord, pos)
    end

    def moves
    end

    def symbol
    end

end