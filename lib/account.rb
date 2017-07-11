require_relative './transactions'
require_relative './transaction'

class Account

  def initialize(transactions = Transactions.new)
    @transactions = transactions
  end

  def deposit(amount)
    deposit = @transactions.add_credit_transaction(amount)
  end

  def withdraw(amount)
    deposit = @transactions.add_debit_transaction(amount)
  end


end
