require_relative "piece.rb"

class NullPiece < Piece
    def initialize(color, baord, pos)
        super(color, baord, pos)
    end

    def moves
    end

    def symbol
    end

end