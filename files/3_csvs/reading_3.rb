lines = []

file = File.open("./sample_csv.csv", "r")

users = []

while (line = file.gets)
  arr = line.split(',')
  users.push({ name: arr[0], zip: arr[1], food: arr[2] })
end

file.close

x = users.map { |user| user[:food] }

puts x.inspect

