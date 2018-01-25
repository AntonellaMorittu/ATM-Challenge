require './lib/person'
require './lib/atm'

describe Person do
  #subject is variable that contains the instance of the Person class
  subject { described_class.new(name: 'Antonella') }

  it 'is expected to have a :name on initialize' do #we need to instance the name on initialize method(@name)
    expect(subject.name).not_to be nil
  end

  it 'is expected to raise error if no name is set' do
    expect { described_class.new }.to raise_error 'A name is required'
  end

  #test needs to check that the cash attribute on initialize (instance @cash) is 0
  it 'is expected to have a :cash attribute with value of 0 on initialize' do
    expect(subject.cash).to eq 0
  end

  #test needs to check if we have an attribute called :account. We have it(line 6) and it's nil because we are not
  #assigning any value to it
  it 'is expected to have a :account attribute' do
   expect(subject.account).to be nil
  end

  #we have to require the Account lib file on our lib file to access the information stored in it.
  describe 'can create an Account' do
    #before testing what's next, rspec needs to create an account with subject info in it
    before { subject.create_account }
    it 'of Account class ' do
      expect(subject.account).to be_an_instance_of Account
    end
    it 'with himself as an owner' do
      expect(subject.account.owner).to be subject
    end
  end

  describe 'can manage funds if an account been created' do
    let(:atm) { Atm.new }
    # As a Person with a Bank Account,
    # in order to be able to put my funds in the account ,
    # i would like to be able to make a deposit
    before { subject.create_account }
    it 'can deposit funds' do
      expect(subject.deposit(100)).to be_truthy
    end

  end

end
