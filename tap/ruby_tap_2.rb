class Account
  attr_accessor :name, :address

  def self.create_with_default_values
    Account.new.tap { |a| a.name }
  end

  def caching_some_value
    true.tap { a.cached_name = "some value" }
  end
end

account = Account.create_with_default_values

puts account.inspect
