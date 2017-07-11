require '././lib/account'

account = Account.new
account.deposit(1000)
account.withdraw(900)
account.get_statement()
