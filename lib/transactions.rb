class Transactions

  attr_reader :list

  def initialize
    @list = []
  end

  def add_transaction(transaction)
    @list << transaction
  end
end
