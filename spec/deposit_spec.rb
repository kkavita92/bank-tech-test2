require 'deposit'

describe Deposit do
  let(:transaction_amount) { 100 }
  subject(:deposit) { described_class.new(transaction_amount) }

  it 'saves amount under credit' do
    expect(deposit.credit).to eq 100
  end

  it 'saves debit as nil' do
    expect(deposit.debit).to be_nil
  end

end
