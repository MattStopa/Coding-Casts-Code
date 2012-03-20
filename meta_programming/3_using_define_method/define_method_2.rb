class Model
  @@all_fields = []

  def initialize
    @fields = @@all_fields
    @values = {}
  end

  def self.field(name)
    @@all_fields << name
    send(:define_method, name) do
      @values[name]
    end

    send(:define_method, "#{name}=") do |value|
      @values[name] = value
    end
  end
end

class Account < Model
  field :balance
  field :address
  field :name
end

a = Account.new
a.balance = 1_000_000
a.address = "212 Main St."
a.name = "Mr MooCow"

puts a.balance
puts a.address

















