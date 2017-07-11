require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }

  describe '#list' do
    it 'should be empty at initialisation' do
      expect(transactions.list).to be_empty
    end
  end


end
