# Card game BlackJack

class Deck
  def initialize
    @nipes = [ '@', '$', '*', '!' ]
    @numbers = [ 'A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K' ]
  end
end

class Cards < Deck
  def card
    @nipes.each { |nip|
      @numbers.each { |numb|
        puts nip + numb
      }  
    }
  end
end

class Engine
end

class Player
end

start = Cards.new

start.card
