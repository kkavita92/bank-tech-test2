class Transactions

  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def add_transaction(amount, transaction_type)
    @list << new_transaction(amount, transaction_type)
  end

  private

  def new_transaction(amount, transaction_type)
    transaction_type.new(amount)
  end

end
