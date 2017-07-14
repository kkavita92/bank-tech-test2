class FormattedStatement
  def initialize(statement)
    @statement.map.with_index do |transaction, index|
      [
        transaction.date,
        format_currency(transaction.credit),
        format_currency(transaction.debit),
        current_balance(index)
      ]
    end
  end

  def self.build(statement)
    new(@statement).reverse
  end

  private

  def current_balance(index)
    @statement[0..index].map do |transaction|
      transaction.update_balance
    end.reduce(:+)
  end

  def format_currency(amount)
    format('%.2f', amount) unless amount.nil?
  end
end
