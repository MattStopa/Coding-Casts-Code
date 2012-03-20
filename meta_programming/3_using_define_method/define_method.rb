class Model
  @@all_fields = []

  def self.field(name)
    @@all_fields << name
    attr_accessor(name)
  end

  def initialize
    @fields = @@all_fields
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
puts a.inspect




















