require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }
  let(:new_transaction) { double :transaction, date: Date.today, amount: 1000}

  describe '#list' do
    it 'should be empty at initialisation' do
      expect(transactions.list).to be_empty
    end
  end

  describe '#add_transaction' do
    it 'should add new transaction to transaction list' do
      transactions.add_transaction(new_transaction)
      expect(transactions.list.length).to be 1
    end
  end


end
