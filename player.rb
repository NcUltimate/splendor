class Player
  class CannotPurchaseError < StandardError; end

  attr_reader :bank, :reserve, :purchased
  def initialize
    @bank = Bank.new(true)
    @reserve = Deck.new
    @purchased = Deck.new
  end

  def reserve!(card, chip = nil)
    @bank.replace!(chip) if chip
    @reserve.put!(card)
  end

  def purchase!(card)
    # TODO
  end
end