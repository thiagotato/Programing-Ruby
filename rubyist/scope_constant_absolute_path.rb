class Violin
  class String
    attr_accessor :pitch
    def initialize(pitch)
      @pitch = pitch
    end
  end

  def initialize
    @e = String.new("E")
    @a = String.new("A")
    puts @e, @a
  end
  def history
    maker = "test"
    date = "22/10"
    a = ::String.new(maker + "," + date)
    puts a
  end
end

a = Violin.new

a.history

