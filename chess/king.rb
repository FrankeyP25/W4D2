require_relative "piece.rb"

class King < Piece
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