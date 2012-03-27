lines = ["Hey this is one line", "This is another line", "This is a third line"]

f = File.new("./my_file.txt", "w")
lines.each { |line| f.print(line) }
f.close
