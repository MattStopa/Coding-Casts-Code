lines = []

begin
  file = File.open("./non-existant.txt", "r")
  while (line = file.gets)
    lines << line
  end
  file.close
rescue => e
  puts e
end

lines.each { |l| puts l }
