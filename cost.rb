class Cost
  def self.[](black=0, white=0, red=0, blue=0, green=0)
    new(black, white, red, blue, green)
  end

  attr_reader *Color::BASE
  def initialize(black=0, white=0, red=0, blue=0, green=0)
    @red = red
    @blue = blue
    @green = green
    @white = white
    @black = black
  end

  def chips
    return @chips if @chips

    @chips = []
    @red.times { @chips << Chip[Color::RED] }
    @blue.times { @chips << Chip[Color::BLUE] }
    @green.times { @chips << Chip[Color::GREEN] }
    @white.times { @chips << Chip[Color::WHITE] }
    @black.times { @chips << Chip[Color::BLACK] }
    @chips
  end

  def ==(other)
    return false unless other.is_a?(Cost)
    other.black == black &&
      other.white == white &&
      other.red == red &&
      other.blue == blue &&
      other.green == green
  end

  def to_s
    "$(#{white}W #{red}R #{blue}B #{green}G #{black}K)"
  end

  def inspect
    to_s
  end
end