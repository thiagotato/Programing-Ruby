module BookKeeping
  VERSION = 4
end

class Acronym
  def self.abbreviate(word)
    lista = word.sub(/-/, ' ').split    
    acr = ""
    lista.each do |single|
      acr += single.split(//).first.upcase
    end

     return acr

  end
end

puts Acronym.abbreviate('ok b-a ojk')
