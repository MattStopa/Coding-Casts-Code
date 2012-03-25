#file 1
module Classified
  class File
    def open
      puts "Opening Classified File"
    end
  end
end

#file 2
module Classified
  class System
    def info
      puts "System is looking good"
    end
  end
end

f = Classified::File.new
f.open

s = Classified::System.new
s.info
