require 'pry'
require 'set'

# base
require_relative 'color.rb'
require_relative 'chip.rb'
require_relative 'cost.rb'
require_relative 'card.rb'

# decks
require_relative 'deck.rb'
require_relative 'high_deck.rb'
require_relative 'med_deck.rb'
require_relative 'low_deck.rb'

# game
require_relative 'splendor.rb'
require_relative 'chip_stack.rb'
require_relative 'bank.rb'

Splendor.run!