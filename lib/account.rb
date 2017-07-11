require_relative './withdraw'
require_relative './deposit'

class Account

  STATEMENT_HEADER = "date || credit || debit || balance"

  def initialize
    @transactions = []
    @initial_balance = 0
  end

  def deposit(amount)
    @transactions << Deposit.new(amount)
  end

  def withdraw(amount)
    @transactions << Withdraw.new(amount)
  end

  def print_statement
    p STATEMENT_HEADER
    @transactions.each do |transaction|
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
