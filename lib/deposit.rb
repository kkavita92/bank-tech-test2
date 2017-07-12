require 'date'

class Deposit
  attr_reader :date

  def credit
    @amount
  end

  def debit
    nil
  end

  def update_balance
    @amount
  end

  private

  def initialize(amount)
    @date = Date.today
    @amount = amount
  end

end
