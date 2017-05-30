def dec_of_cards
  type = ["A", "K", "Q", "J", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
  nipe = ["!", "*", "@", "$"]
  num_rand = Random.new
  cards = type[num_rand.rand(type.count)] + nipe[num_rand.rand(nipe.count)]
  return cards
end

teste = dec_of_cards

puts teste
