class Person
  def self.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      attr = method[9..-1]
      if self.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).include(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end

 PEOPLE = []
  attr_reader :name, :hobbies, :friends
  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end
  def all_with_friends(friend)
    return PEOPLE
  end

  def all_with_hobbies(robby)
    return hobbies
  end

#=begin
#=end

end
j = Person.new("John")
p = Person.new("Paul")
g = Person.new("George")
r = Person.new("Ringo")
j.has_friend(p)
j.has_friend(g)

g.has_friend(p)
r.has_hobby("rings")
puts p.all_with_frieds("Paul")
#puts Person.all_with_friends("Paul")
#Person.all_with_friends(p).each do |person|
#  puts "#{person.name} is friend with #{p.name}"
#end
#Person.all_with_hobbies("rings").each do |person|
#  puts "#{person.name} is into rings"
#end
