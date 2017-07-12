require 'withdraw'

describe Withdraw do
  let(:transaction_amount) { 100 }
  subject(:withdraw) { described_class.new(transaction_amount) }

  it 'saves amount under debit' do
    expect(withdraw.debit).to eq 100
  end

  it 'saves credit as nil' do
    expect(withdraw.credit).to be_nil
  end

end
