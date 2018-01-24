require 'date'

class Account
  attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner

  STANDARD_VALIDITY_YRS = 5

  def initialize(args ={})
    @pin_code = pin_code
    @balance = 0
    @exp_date = set_exp_date
    @account_status = :active
  end

private

  def pin_code
    rand(1000..9999)
  end

  def set_exp_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
  end

  def deactivate
  @account_status = :deactivated
end

end
