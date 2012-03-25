module Classified
  class File
    def open
      puts "Opening Classified File"
    end
  end
end

f = Classified::File.new
f.open
