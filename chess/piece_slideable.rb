require_relative "piece.rb"

class Rook < Piece
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

class Bishop < Rook
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

class Queen < Rook
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