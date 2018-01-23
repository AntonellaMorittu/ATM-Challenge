require './lib/atm.rb'
require 'date'

describe Atm do
  let(:account) { instance_double('Account') }

  before do
    allow(account).to receive(:balance).and_return(100)  
    allow(account).to receive(:balance=)
end



  it 'funds are reduced at withdraw' do
    subject.withdraw(50, account)
    expect(subject.funds).to eq 950
  end
end
