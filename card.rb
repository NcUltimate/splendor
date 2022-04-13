class Card
  class InvalidColorError < StandardError; end
  class InvalidTierError < StandardError; end
  class InvalidPointsError < StandardError; end

  attr_reader :cost, :color, :tier, :points
  def initialize(cost, color, tier = 1, points = 0)
    raise InvalidColorError  unless Color.valid?(color)
    raise InvalidTierError   unless tier >=1 && tier <= 3
    raise InvalidPointsError unless points >= 0 && points <=5

    @cost = cost
    @color = color
    @tier = tier
    @points = points
  end

  def ==(other)
    return false unless other.is_a?(Card)
    other.cost == cost &&
      other.color == color &&
      other.tier == tier &&
      other.points == points
  end

  def to_s
    "#<Card: #{color} T#{tier} #{cost} (#{points}pts)>"
  end

  def inspect
    to_s
  end
end