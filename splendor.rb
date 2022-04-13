class Splendor
  class << self
    def run!
      @player_count = 4
    end

    def player_count
      @player_count || 4
    end
  end

  attr_reader :high_deck, :med_deck, :low_deck, :nobility, :bank
  def initialize
    @high_dech = HighDeck.new.shuffle!
    @med_deck = MedDeck.new.shuffle!
    @low_deck = LowDeck.new.shuffle!
    @bank = Bank.new
    @nobility = []
  end

  def visible_cards
    high_deck.top4 + med_deck.top4 + low_deck.top4
  end
end