# Card game BlackJack

class Deck
  def initialize
    @nipes = [ '@', '$', '*', '!' ]
    @numbers = [ 'A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K' ]
  end
end

class Cards < Deck
  def card
    @cd = []
    @nipes.each { |nip|
      @numbers.each { |numb|
        game = nip + numb
        @cd.push(game)
      }  
    }
    return @cd 
  end
end

class Engine
  def game 
    start = Cards.new
    take = Random.new
    game = start.card
    return game[take.rand(52)] 
  end

  # player na primeira jogada deve receber duas cartas que devem ser removidas da pilha para não serem entregues novamente. Deve ser feito um calculo com as duas cartas para verficar se o player tem 21 e retornar em caso de vitoria ou derota. Player pode pegar mais cartas para chegar mais perto de 21.

end

class Player
end

ok = Engine.new
op = ok.game

puts op
