class LexParser

  def matchword(word_list)
    words.each { |keys|
      case keys[0]
      when 'verb'
        @verb = keys[1]
      when 'noun', 'direction'
        @noun = keys[1]
      when 'number'
        @number = keys[1]
      when 'stop', 'error'
        next
      end
    }
  end
end
