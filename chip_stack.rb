class ChipStack
  class EmptyStackError < StandardError; end
  class FullStackError < StandardError; end
  class BadStackSizeError < StandardError; end

  attr_reader :type, :size, :max_size
  def initialize(type, empty = false)
    @type = type
    @max_size = determine_stack_size
    @size = empty ? 0 : @max_size
  end

  def take!
    raise EmptyStackError unless size > 0
    @size -= 1
    type
  end

  def replace!
    raise FullStackError unless size < max_size
    @size -= 1
    type
  end

  def can_take?
    size > 0
  end

  def can_replace?
    size < max_size
  end

  private

  def determine_stack_size
    case Splendor.player_count
    when 2 then 5
    when 3 then 5
    when 4 then 7
    else
      raise BadStackSizeError
    end
  end
end