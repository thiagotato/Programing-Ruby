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

    @player_cards = [] 
    @player_cards.push(shuffle)
    @player_cards.push(shuffle)

    @bank_cards = []
    @bank_cards.push(shuffle)
    @bank_cards.push(shuffle)

    puts "Your cards are #{@player_cards[0]} and #{@player_cards[1]}." 
    puts "The first bank card is #{@bank_cards[0]}"
  end

  def shuffle
    start = Cards.new
    take = Random.new
    game = start.card

    return game.delete_at(take.rand(0..game.length - 1))
  end

  def score(scr)
    total = 0
    scr.each { |point|

      score = point.gsub(/[@$!*]/, '')
      case score
      when 'A'
        total = total + 1        
      when 'J', 'Q', 'K'
        total = total +  10
      else
        total = total + score.to_i
      end
    }
    return total

   end

  def play
    puts "Would you like one more card ? Yes or No"
    puts ">"
    answer = $stdin.gets.chomp
    
    case answer 
    when 'Yes'
      @player_cards.push(shuffle)
      puts "your next card #{@player_cards[@player_cards.length - 1]}"
      if score(@player_cards).to_i > 21
        puts "You lose"
      else
        play
      end
    when 'No'
      if score(@player_cards).to_i > score(@bank_cards).to_i
        puts "You win"
      else
        puts "You lose"
      end
    else
      play
    end
  end 

  # player na primeira jogada deve receber duas cartas que devem ser removidas da pilha para não serem entregues novamente. Deve ser feito um calculo com as duas cartas para verficar se o player tem 21 e retornar em caso de vitoria ou derota. Player pode pegar mais cartas para chegar mais perto de 21.

end

ok = Engine.new
op = ok.play
