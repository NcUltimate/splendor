class MedDeck < Deck
  def self.tier
    2
  end

  def initialize
    @cards = [
      # 1-point cards
      Card.new(Cost[2,0,2,0,3], Color::WHITE, self.class.tier, 1),
      Card.new(Cost[0,2,3,3,0], Color::WHITE, self.class.tier, 1),
      Card.new(Cost[3,0,2,3,0], Color::RED, self.class.tier, 1),
      Card.new(Cost[3,2,2,0,0], Color::RED, self.class.tier, 1),
      Card.new(Cost[0,3,3,0,2], Color::GREEN, self.class.tier, 1),
      Card.new(Cost[2,2,0,3,0], Color::GREEN, self.class.tier, 1),
      Card.new(Cost[0,0,3,2,2], Color::BLUE, self.class.tier, 1),
      Card.new(Cost[3,0,0,2,3], Color::BLUE, self.class.tier, 1),
      Card.new(Cost[0,3,0,2,2], Color::BLACK, self.class.tier, 1),
      Card.new(Cost[2,3,0,0,3], Color::BLACK, self.class.tier, 1),

      # 2-point cards
      Card.new(Cost[2,0,4,0,1], Color::WHITE, self.class.tier, 2),
      Card.new(Cost[0,0,5,0,0], Color::WHITE, self.class.tier, 2),
      Card.new(Cost[3,0,5,0,0], Color::WHITE, self.class.tier, 2),
      Card.new(Cost[0,1,0,4,2], Color::RED, self.class.tier, 2),
      Card.new(Cost[5,3,0,0,0], Color::RED, self.class.tier, 2),
      Card.new(Cost[5,0,0,0,0], Color::RED, self.class.tier, 2),
      Card.new(Cost[1,4,0,2,0], Color::GREEN, self.class.tier, 2),
      Card.new(Cost[0,0,0,0,5], Color::GREEN, self.class.tier, 2),
      Card.new(Cost[0,0,0,5,3], Color::GREEN, self.class.tier, 2),
      Card.new(Cost[0,5,0,3,0], Color::BLUE, self.class.tier, 2),
      Card.new(Cost[0,0,0,5,0], Color::BLUE, self.class.tier, 2),
      Card.new(Cost[4,2,1,0,0], Color::BLUE, self.class.tier, 2),
      Card.new(Cost[0,0,2,1,4], Color::BLACK, self.class.tier, 2),
      Card.new(Cost[0,5,0,0,0], Color::BLACK, self.class.tier, 2),
      Card.new(Cost[0,0,3,0,5], Color::BLACK, self.class.tier, 2),

      # 3-point cards
      Card.new(Cost[0,6,0,0,0], Color::WHITE, self.class.tier, 3),
      Card.new(Cost[0,0,6,0,0], Color::RED, self.class.tier, 3),
      Card.new(Cost[0,0,0,0,6], Color::GREEN, self.class.tier, 3),
      Card.new(Cost[0,0,0,6,0], Color::BLUE, self.class.tier, 3),
      Card.new(Cost[6,0,0,0,0], Color::BLACK, self.class.tier, 3)
    ]
  end
end