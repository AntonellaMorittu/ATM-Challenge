class Person
  attr_accessor :name, :cash, :account

def initialize (arg={})
    @name = set_name(arg[:name])
end

def no_name
  if @name == nil
     raise 'A name is required'
   end
end
end
