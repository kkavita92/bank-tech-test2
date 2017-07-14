require_relative './withdraw'
require_relative './deposit'
require_relative './transactions'
require_relative './statement'

class Account

  def deposit(amount, transaction_type = Deposit)
    @transactions.add_transaction(amount, transaction_type)
  end

  def withdraw(amount, transaction_type = Withdraw)
    @transactions.add_transaction(amount, transaction_type)
  end

  def print_statement
    @statement.print_statement(transaction_list)
  end

  private

  def initialize(transactions = Transactions.new, statement = Statement.new)
    @transactions = transactions
    @statement = statement
  end

  def transaction_list
    @transactions.list
  end

end
