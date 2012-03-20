class String

  def self.add_new_method(name)
    send(:define_method,name) {
      puts "You created a method named #{name}, and you are in it right now!"
    }
  end

end

String.add_new_method("Matt")

"string".Matt
