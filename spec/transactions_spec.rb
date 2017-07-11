require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }

  describe '#add_credit_transaction' do
    it 'adds new credit transaction to list' do
      expect(transactions.add_credit_transaction(100)).to eq [{amount: 100, date: Date.new}]
    end
  end

  describe '#add_debit_transaction' do
    it 'adds new debit transaction to list' do
      expect(transactions.add_debit_transaction(100)).to eq [{amount: -100, date: Date.new}]
    end
  end



end
