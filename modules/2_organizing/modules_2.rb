module LoanCalculations
  def owed_by_month
    balance_owed / maturity_months
  end

  def years_left_to_maturity
    maturity_months / 12
  end

  def cost_of_interest
    owed_by_month * interest_rate
  end
end

module LoanPrinting
  def print_balance
    "Your balance is: #{balance_owed}"
  end

  def print_estimated_cost_per_day
    "The cost per day of your loan is roughly: $#{owed_by_month / 30}"
  end
end

class Loan
  include LoanCalculations
  include LoanPrinting

  attr_accessor :balance_owed, :maturity_months, :interest_rate
end

loan = Loan.new
loan.balance_owed = 2000
loan.maturity_months = 10
loan.interest_rate = 0.01

puts loan.owed_by_month
puts loan.years_left_to_maturity
puts loan.cost_of_interest

puts loan.print_balance
puts loan.print_estimated_cost_per_day
