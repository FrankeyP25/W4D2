require_relative "piece.rb"

class Bishop < Piece
    include Slideable
    def initialize(color, baord, pos)
        super(color, baord, pos)
    end

    def symbol
    end

    private
    def move_dirs
    end
end