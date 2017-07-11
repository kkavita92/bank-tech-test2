require 'date'

class Deposit
  attr_reader :date, :amount

  def initialize(amount)
    @date = Date.today
    @amount = amount
  end

  def update_balance
    @amount
  end
end
