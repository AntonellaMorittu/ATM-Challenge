require 'date'

class Account
  attr_accessor :funds

def initialize
  @funds = 1000
end

def pin_code
  rand(1000..9999)
end

end
