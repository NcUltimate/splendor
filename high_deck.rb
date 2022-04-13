class HighDeck < Deck
  def self.tier
    3
  end

  def initialize
    @cards = [
      # 3-point cards
      Card.new(Cost[3,0,5,3,3], Color::WHITE, self.class.tier, 3),
      Card.new(Cost[3,5,3,3,0], Color::GREEN, self.class.tier, 3),
      Card.new(Cost[3,3,0,5,3], Color::RED, self.class.tier, 3),
      Card.new(Cost[5,3,3,0,3], Color::BLUE, self.class.tier, 3),
      Card.new(Cost[0,3,3,3,5], Color::BLACK, self.class.tier, 3),

      # 4-point cards
      Card.new(Cost[7,0,0,0,0], Color::WHITE, self.class.tier, 4),
      Card.new(Cost[6,3,3,0,0], Color::WHITE, self.class.tier, 4),
      Card.new(Cost[0,3,0,6,3], Color::GREEN, self.class.tier, 4),
      Card.new(Cost[0,0,0,7,0], Color::GREEN, self.class.tier, 4),
      Card.new(Cost[0,0,0,0,7], Color::RED, self.class.tier, 4),
      Card.new(Cost[0,0,3,3,6], Color::RED, self.class.tier, 4),
      Card.new(Cost[0,7,0,0,0], Color::BLUE, self.class.tier, 4),
      Card.new(Cost[3,6,0,3,0], Color::BLUE, self.class.tier, 4),
      Card.new(Cost[0,0,7,0,0], Color::BLACK, self.class.tier, 4),
      Card.new(Cost[3,0,6,0,3], Color::BLACK, self.class.tier, 4),

      # 5-point cards
      Card.new(Cost[7,3,0,0,0], Color::WHITE, self.class.tier, 5),
      Card.new(Cost[0,0,0,7,3], Color::GREEN, self.class.tier, 5),
      Card.new(Cost[0,0,3,0,7], Color::RED, self.class.tier, 5),
      Card.new(Cost[0,7,0,3,0], Color::BLUE, self.class.tier, 5),
      Card.new(Cost[3,0,7,0,0], Color::BLACK, self.class.tier, 5)
    ]
  end
end