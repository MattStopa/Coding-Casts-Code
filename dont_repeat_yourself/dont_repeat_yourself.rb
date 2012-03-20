class User
  attr_accessor :valid, :balance, :authorized, :age, :zip_code 

  def user_balance
    if account_valid?
      puts balance
    else
      warn_account_not_valid
    end
  end

  def user_profile
    if account_valid?
      puts "Profile Information goes here!"
    else
      warn_account_not_valid
    end
  end

  def add_funds(amount)
    account_valid? ? balance += amount : warn_account_not_valid
  end

  def warn_account_not_valid
    puts "This is not a valid Account"
  end

  def account_valid?
    valid && authorized && balance > 0 && age > 18 && zip_code != nil
  end
end


