class Account
  attr_accessor :name, :address

  def self.create_with_default_values
    account = Account.new
    account.name = "none"
    account
  end
end

account = Account.create_with_default_values

puts account.inspect
