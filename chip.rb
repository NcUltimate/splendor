class Chip
  class InvalidTypeError < StandardError; end

  def self.[](color)
    new(color)
  end

  attr_reader :color
  def initialize(color)
    raise InvalidTypeError unless Color.valid?(color)
    @color = color
  end

  def ==(other)
    return false unless other.is_a?(Chip)
    other.color == color
  end
end