require_relative "piece.rb"

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