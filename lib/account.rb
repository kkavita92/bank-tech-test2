require_relative './withdraw'
require_relative './deposit'
require_relative './transactions'

class Account

  STATEMENT_HEADER = "date || credit || debit || balance"

  def initialize(transactions = Transactions.new)
    @transactions = transactions
    @initial_balance = 0
  end

  def deposit(amount, deposit = Deposit)
    @transactions.add_transaction(deposit.new(amount))
  end

  def withdraw(amount, withdraw = Withdraw)
    @transactions.add_transaction(withdraw.new(amount))
  end

  def print_statement
    p STATEMENT_HEADER
    @transactions.list.each do |transaction|
      print_row(transaction)
    end
  end

  def print_row(transaction)
    p "#{transaction.date} || #{transaction.amount} || #{updated_balance(transaction)} "
  end


  def updated_balance(transaction)
    if transaction.is_a? Deposit
      @initial_balance += transaction.amount
    else
      @initial_balance -= transaction.amount
    end
  end

end
