module Chess
  class Square
    def initialize(chess_notation)
      @chess_notation = chess_notation
    end

    # ... def valid?

    def to_coordinates
      fail "Bad notation" unless @chess_notation =~ /\A([a-h])(-?\d+)\z/

      x, y = $1, $2
      [x.ord - 'a'.ord, y.to_i - 1]
    end

    def to_s
      @chess_notation
    end
  end
end
