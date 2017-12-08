class Lexicon

  def self.scan(arg)
    checker = arg.split
    analyzed = []
    checker.each { |check|
      case check
      when 'north', 'south', 'east'
        analyzed.push(["direction", check])
      when 'go', 'kill', 'eat'
        analyzed.push(["verb", check])
      when 'the', 'in', 'of'
        analyzed.push(["stop", check])
      when 'bear', 'princess'
        analyzed.push(["noun", check])
      when '3', '91234', '1234'
        analyzed.push(["number", check.to_i])
      else
        analyzed.push(["error", check])
      end
    }
        return analyzed
  end
end
