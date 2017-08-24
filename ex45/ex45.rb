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
  def initialize
    start = Cards.new
    take = Random.new
    game = start.card
    @player_card1 = game.delete_at(take.rand(0..51))
    @player_card2 = game.delete_at(take.rand(0..51))
    @player_scr = score(@player_card1) + score(@player_card2)

    @bank_card1 = game.delete_at(take.rand(0..51))
    @bank_card2 = game.delete_at(take.rand(0..51))
    @bank_scr = score(@bank_card1) + score(@bank_card2)

  end

  def score(scr)
    
    score = scr.gsub(/[@$!*]/, '')
    case score
    when 'A'
      return 1
    when 'J', 'Q', 'K'
      return 10
    else
      return score.to_i
    end 
   end

  def play
    puts "Your cards are #{@player_card1} and #{@player_card2}." 
    puts "The first bank card is #{@bank_card1}"
    puts "Would you like one more card ? Yes or No"
    puts ">"
    answer = $stdin.gets.chomp

    if answer = "Yes"
      puts "ok"
    end
  end 

  # player na primeira jogada deve receber duas cartas que devem ser removidas da pilha para não serem entregues novamente. Deve ser feito um calculo com as duas cartas para verficar se o player tem 21 e retornar em caso de vitoria ou derota. Player pode pegar mais cartas para chegar mais perto de 21.

end

class Player
  def initialize(card1, card2)
    puts card1 + card2
  end
end

ok = Engine.new
op = ok.play
