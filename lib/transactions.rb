class Transactions

  attr_reader :list_of_transactions

  def initialize
    @list_of_transactions = []
  end

  def add_transaction(transaction)
    @list_of_transactions << transaction
  end
end
