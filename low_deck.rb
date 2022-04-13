class LowDeck < Deck
  def self.tier
    1
  end

  def initialize
    @cards = [
      # 0-point cards
      Card.new(Cost[1,0,0,2,2], Color::WHITE),
      Card.new(Cost[1,0,2,0,0], Color::WHITE),
      Card.new(Cost[1,0,1,1,1], Color::WHITE),
      Card.new(Cost[0,0,0,3,0], Color::WHITE),
      Card.new(Cost[0,0,0,2,2], Color::WHITE),
      Card.new(Cost[1,0,1,1,2], Color::WHITE),
      Card.new(Cost[1,3,0,1,0], Color::WHITE),
      Card.new(Cost[0,3,0,0,0], Color::RED),
      Card.new(Cost[3,1,1,0,0], Color::RED),
      Card.new(Cost[0,0,0,2,1], Color::RED),
      Card.new(Cost[2,2,0,0,1], Color::RED),
      Card.new(Cost[1,2,0,1,1], Color::RED),
      Card.new(Cost[1,1,0,1,1], Color::RED),
      Card.new(Cost[0,2,2,0,0], Color::RED),
      Card.new(Cost[0,2,0,1,0], Color::GREEN),
      Card.new(Cost[0,0,2,2,0], Color::GREEN),
      Card.new(Cost[0,1,0,3,1], Color::GREEN),
      Card.new(Cost[1,1,1,1,0], Color::GREEN),
      Card.new(Cost[2,1,1,1,0], Color::GREEN),
      Card.new(Cost[2,0,2,1,0], Color::GREEN),
      Card.new(Cost[0,0,3,0,0], Color::GREEN),
      Card.new(Cost[2,1,0,0,0], Color::BLUE),
      Card.new(Cost[1,1,2,0,1], Color::BLUE),
      Card.new(Cost[1,1,1,0,1], Color::BLUE),
      Card.new(Cost[0,0,1,1,3], Color::BLUE),
      Card.new(Cost[3,0,0,0,0], Color::BLUE),
      Card.new(Cost[0,1,2,0,2], Color::BLUE),
      Card.new(Cost[2,0,0,0,2], Color::BLUE),
      Card.new(Cost[0,1,1,1,1], Color::BLACK),
      Card.new(Cost[0,0,1,0,2], Color::BLACK),
      Card.new(Cost[0,2,0,0,2], Color::BLACK),
      Card.new(Cost[1,0,3,0,1], Color::BLACK),
      Card.new(Cost[0,0,0,0,3], Color::BLACK),
      Card.new(Cost[0,1,1,2,1], Color::BLACK),
      Card.new(Cost[0,0,0,4,0], Color::BLACK),

      # 1-point cards
      Card.new(Cost[0,0,0,4,0], Color::BLACK, self.class.tier, 1),
      Card.new(Cost[0,0,4,0,0], Color::BLUE, self.class.tier, 1),
      Card.new(Cost[4,0,0,0,0], Color::GREEN, self.class.tier, 1),
      Card.new(Cost[0,4,0,0,0], Color::RED, self.class.tier, 1),
      Card.new(Cost[0,0,0,0,4], Color::WHITE, self.class.tier, 1)
    ]
  end
end