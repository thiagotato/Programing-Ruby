require_relative "modin"

class ModuleTester
  include MyFirstModule
end

mt = ModuleTester.new
mt.say_hello
