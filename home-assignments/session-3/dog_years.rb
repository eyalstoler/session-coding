def convert_to_dog_years(age)
  age % 7 == 0 ? age / 7 : (age.to_f / 7).round
end

print "Please enter your name:  "
name=gets.chomp
print "Please enter your age:  "
age=gets.chomp.to_i

if (age > 130)
  raise "Hey! I don't know a person at the age of #{age}!. Quitting..."
end

puts "Hi #{name}, your age is #{convert_to_dog_years(age)} in dog years!"
