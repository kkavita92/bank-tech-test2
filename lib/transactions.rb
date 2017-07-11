class Transactions

  def add_credit_transaction(amount)
    @list_of_transactions << add_transaction(amount)
  end

  def add_debit_transaction(amount)
    @list_of_transactions << add_transaction(-amount)
  end

  private

  def initialize
    @list_of_transactions = []
  end

  def add_transaction(amount)
    return {amount: amount, date: Date.new }
  end

end
