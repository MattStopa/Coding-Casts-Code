module Loanable
  attr_accessor :balance_owed, :maturity_date

  def owed_by_month
    balance_owed / maturity_date
  end
end

class Loan
  include Loanable
  attr_accessor :amount_paid

end

class Bond
  include Loanable
end

loan = Loan.new
loan.balance_owed = 5000
loan.maturity_date = 5

bond = Bond.new
bond.balance_owed = 200
bond.maturity_date = 10

puts loan.owed_by_month
puts "---"
puts bond.owed_by_month


