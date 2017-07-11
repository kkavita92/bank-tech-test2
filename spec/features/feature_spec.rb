require '././lib/account'

account = Account.new
account.deposit(1000)
account.withdraw(900)
account.deposit(400)
account.print_statement()
