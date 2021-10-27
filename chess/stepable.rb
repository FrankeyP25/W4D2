
module Stepable
    def moves
        new_arr = []
        (0..7).each do |i|
            (0..7).each do |j|
                new_arr << [i,j] if Board.valid_pos?([i, j])
            end
        end
        
    end
    
    protected
    def moves_diffs
        MOVES = [
           [+2,-1], [+2, +1], #up
           [-2,-1], [-2, +1], #down
           [+1,-2], [-1, -2], #left
           [+1,+2], [-1, +2] #right 
       ]
    end
end