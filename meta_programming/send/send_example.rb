class Account
  attr_accessor :name, :address, :email, :notes, :bank_balance

  def attributes=(values)
    values.each_key do |k|
      self.send("#{k}=", values[k])
      self.name = values[k]
    end
  end

end

user_info = {
              :name => "Matt",
              :address => "312 Random St.",
              :email => "matthew.p.stopa@gmail.com",
              :notes => "Annoying Customer",
	      :bank_balance => 1_000_000
            }

account = Account.new
account.assign_values(user_info)

puts account.inspect
















