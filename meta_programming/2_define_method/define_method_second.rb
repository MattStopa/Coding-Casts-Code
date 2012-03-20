class String
  
  def self.add_new_method(name, &logic)
    send(:define_method, name)  { |*args|
      puts "You created a method named #{name}, and you are in it right now!"
      logic.call(*args)
    }
  end
end

String.add_new_method("add_numbers") do |x, y|
  puts "here is our logic"
  puts x + y
end

"string".add_numbers(1, 2)
