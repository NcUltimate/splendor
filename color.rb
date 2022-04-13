class Color
  RED   = :red
  GREEN = :green
  BLACK = :black
  BLUE  = :blue
  WHITE = :white
  GOLD  = :gold

  BASE = [ RED, GREEN, BLACK, BLUE, WHITE ].to_set.freeze
  ALL = [ RED, GREEN, BLACK, BLUE, WHITE, GOLD ].to_set.freeze

  class << self
    def base?(color)
      BASE.member?(color)
    end

    def valid?(color)
      ALL.member?(color)
    end
  end
end