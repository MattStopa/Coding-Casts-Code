class Account
  attr_accessor :name, :address, :email, :notes
end

user_info = {
              :name => "Matt",
              :address => "312 Random St.",
              :email => "matthew.p.stopa@gmail.com",
              :notes => "Annoying Customer"
            }

account = Account.new

account.name = user_info[:name]
account.address = user_info[:address]
account.email = user_info[:email]
account.notes = user_info[:notes]

puts account.inspect
















