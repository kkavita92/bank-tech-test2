require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }
  let(:transaction) { double :transaction, date: Date.today, amount: 1000}

  describe '#add_transaction' do
    it 'should add new transaction to transaction list' do
      expect(transactions.add_transaction(transaction)).to eq [transaction]
    end
  end


end
