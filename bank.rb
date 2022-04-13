class Bank
  class InvalidDraw3Error < StandardError; end

  attr_reader *Color::ALL
  def initialize(empty = false)
    Color::ALL.each do |color|
      instance_variable_set(
        "@#{color}".to_sym,
        ChipStack.new(Chip[color], empty)
      )
    end
  end

  def covers_cost?(cost)
    missing_cost = Colors::BASE.reduce(0) do |total, color|
      total + [cost.send(color) - send(color).size, 0].max
    end
    missing_cost <= gold.size
  end

  def replace!(chip)
    send(chip.color).replace!
    chip
  end

  def take3!(c1, c2 = nil, c3 = nil)
    raise InvalidDraw3Error if c1 == c2 || c2 == c3 || c1 == c3

    result = [take!(c1)]
    result << take!(c2) if c2
    result << take!(c3) if c3
    result
  end

  def take2!(color)
    [take!(color), take!(color)]
  end

  def take!(color)
    send(color).take!
  end
end