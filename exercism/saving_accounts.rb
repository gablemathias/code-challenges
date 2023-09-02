module SavingsAccount
  def self.interest_rate(balance)
    #SavingsAccount.interest_rate(200.75)
    #=> 0.5

    case balance
    when (0...1000)
      0.5
    when (1000...5000)
      1.621
    when (5000..)
      2.475
    else # Negative Interest
      3.213
    end
  end

  def self.annual_balance_update(balance)
    # SavingsAccount.annual_balance_update(200.75)
    # => 201.75375
    # No need to transform float in base 10 decimal point
    balance + (balance * (self.interest_rate(balance) / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    # SavingsAccount.years_before_desired_balance(200.75, 214.88)
    # => 14
    counter = 0
    while current_balance < desired_balance
      current_balance = self.annual_balance_update(balance)
      counter += 1
    end
    counter
  end
end
