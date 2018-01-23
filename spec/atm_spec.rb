require './lib/atm.rb'
require 'date'

describe Atm do
<<<<<<< HEAD
let(:account) { instance_double('Account') }

before do
  allow(account).to receive(:balance).and_return(100)
  allow(account).to receive(:balance=)
end

it 'funds are reduced at withdraw' do
  subject.withdraw(50, account)
  expect(subject.funds).to eq 950
end

it 'rejects withdraw if account has insufficient funds' do
  expected_output = { status: false, message: 'insufficient funds', date: Date.today }
  expect(subject.withdraw(105, account)).to eq expected_output
end

it 'reject withdraw if ATM has insufficient funds' do
  subject.funds = 50
  expected_output = { status: false, message: 'insufficient funds in ATM', date: Date.today }
  expect(subject.withdraw(100, account)).to eq expected_output
end

it 'reject withdraw if ATM has insufficient funds' do
  subject.funds = 50

  expected_output = { status: false, message: 'insufficient funds in ATM', date: Date.today }

  expect(subject.withdraw(100, account)).to eq expected_output
end
=======
  let(:account) { instance_double('Account') }

  before do
    allow(account).to receive(:balance).and_return(100)  
    allow(account).to receive(:balance=)
end


>>>>>>> bee5e472ee7c0e87f5a9fd2d755deaf341aceade

  it 'funds are reduced at withdraw' do
    subject.withdraw(50, account)
    expect(subject.funds).to eq 950
  end
end
