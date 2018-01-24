require 'date'

class Account
  attr_accessor :balance, :account_status, :owner
  attr_reader :pin_code, :exp_date

  STANDARD_VALIDITY_YRS = 5

  def initialize(args ={})
    @pin_code = pin_code
    @balance = 0
    @exp_date = set_exp_date
    @account_status = :active
  end

  #using an instance method is possible when you create
  # a instance of a class, as we did
  def deactivate
    @account_status = :deactivated
  end

  def pin_code
    rand(1000..9999)
  end

  def set_exp_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
  end

  def self.deactivate(account)
    account.account_status = :deactivated
  end

end
