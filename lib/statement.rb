class Statement

  STATEMENT_HEADER = 'date || credit || debit || balance'.freeze

  def print_statement(statement)
    p STATEMENT_HEADER
    statement_body(statement)
  end

  private

  def statement_body(transactions)
    statement = compile_statement(transactions)
    statement.reverse.each do |transaction|
      p format_transaction(transaction)
    end
  end

  def format_transaction(transaction)
    transaction.join(' || ')
  end

  def compile_statement(transactions)
    transactions.map.with_index do |transaction, index|
      [ transaction.date,
        format_currency(transaction.credit),
        format_currency(transaction.debit),
        current_balance(transactions, index)]
    end
  end

  def current_balance(transactions, index)
    transactions[0..index].map { |transaction| transaction.update_balance }.reduce(:+)
  end

  def format_currency(amount)
    format('%.2f', amount) unless amount.nil?
  end
  
end
