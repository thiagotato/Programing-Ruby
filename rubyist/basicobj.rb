class BasicObject
end

module Kernel
end

class Object < BasicObject
  include Kernel
end



puts Object.superclass
