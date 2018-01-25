require './lib/atm.rb'
require './lib/account.rb'

class Person
  #information stored in the class we want to access
  attr_accessor :name, :cash, :account
# initialize is a method needed to take some actions,
# instances can be considered as copies of the class(in this case
# the person is our class)
def initialize(arg={})#initialize takes arguments, information stored in between {}
    #calling and instance allow us to set a name and
    #match it with the name we have in the test(Thomas or Antonella in this case)
    @name = set_name(arg[:name])
    @cash = 0
end

#ternary operator (line 21) a ? b : c
def set_name(subjectName) #method set_name
  #if the subject name is nil then return missing_name,
  #if there is a @name(costant in the test), then return subject name
  subjectName.nil? ? missing_name : @name = subjectName
end

#here we have to define the missing_name method to return a message
def missing_name
  raise "A name is required"
end

#define the function create_account
def create_account()
    #the account can be created (Account.new) with the subject(self) as owner
    @account = Account.new(owner: self)
  end

def deposit(amount)
    @account.balance += amount
    @cash -= amount
end
end
