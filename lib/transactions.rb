class Transactions

  def initialize
    @list_of_transactions = []
  end

  def add_transaction(transaction)
    @list_of_transactions << transaction
  end
end
