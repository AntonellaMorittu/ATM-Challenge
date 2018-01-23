class Atm
  attr_accessor :funds

  def initialize
    @funds = 1000
  end

  def withdraw(amount, account)
  case
  when insufficient_funds_in_account?(amount, account)
    { status: false, message: 'insufficient funds in account', date: Date.today }
  when insufficient_funds_in_atm?(amount)
    { status: false, message: 'insufficient funds in ATM', date: Date.today }
  else
    perform_transaction(amount, account)
  end


  def perform_transaction(amount, account)
    @funds -= amount
    account.balance = account.balance - amount
    { status: true, message: 'success', date: Date.today, amount: amount }
  end

  private

  def insufficient_funds_in_atm?(amount)
   @funds < amount
  end

  def insufficient_funds_in_account?(amount, account)
    amount > account.balance
  end

end
end
