require './lib/account.rb'
require 'date'

describe Account do
  let(:user) { instance_double('user', pin_code: "1234", exp_date: '04/18', account_status: :active, balance: 5) }

  it 'check length of a number' do
    number = 1234
    number_length = Math.log10(number).to_i + 1
    expect(number_length).to eq 4
  end
end
