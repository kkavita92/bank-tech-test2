require 'date'

class Withdraw
  attr_reader :date

  def credit
    nil
  end

  def debit
    @amount
  end

  def update_balance
    -@amount
  end

  private

  def initialize(amount)
    @date = Date.today
    @amount = amount
  end

end
