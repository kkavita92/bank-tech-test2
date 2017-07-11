require 'date'

class Transaction

  private

  def initialize(amount, type, date = Date.today)
    @type = type
    @date = date
    @amount = amount
  end

end
