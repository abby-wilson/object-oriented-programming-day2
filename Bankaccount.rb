class BankAccount
      @@interest_rate = 0.07
      @@accounts = []

      attr_reader :balance
      attr_writer :balance

  def initialize
    @balance = 0
  end


  def deposit (deposit)
    @balance += (deposit)
  end

  def withdraw (withdraw)
    @balance -= (withdraw)
  end

  def self.create
    @@accounts << BankAccount.new
    return @@accounts.last
  end

  def self.total_funds
    total = 0
    @@accounts.each do |account|
      total += account.balance
    end
    return total
  end

  def self.interest_times
    @@accounts.each do |a|
      a.balance = @@accounts *= (@@interest_rate + 1)
    end
    return a.balance
  end 

  end


  def print_balance
    puts "Your balance is #{@balance}"
  end
end

my_bankaccount = BankAccount.create
savings_account = BankAccount.create
puts my_bankaccount.balance
puts savings_account.balance
puts savings_account.deposit(300)
