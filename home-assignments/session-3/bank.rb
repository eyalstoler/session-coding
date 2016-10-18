balance = rand(100..1000)
# Some more options for random number
# balance = 100.upto(1000).to_a.shuffle.first
# balance = [*100...1000].sample

# print_action method expects two parameters "action" and "amount"
def print_action(action, amount)
  puts "You've asked to #{action} an amount of $#{amount}. Performing your request..."
end

def view_balance(name, balance)
  puts "Hi #{name}, Your current balance is: $#{balance}"
end

def get_amount
  puts "how much?"
  gets.chomp.to_i
end

puts "Please enter your personal name:"
name = gets.chomp.capitalize

puts "What action would you like to perform?"
action = gets.chomp
view_balance(name, balance)
case action
  when "withdraw"
    amount = get_amount
    balance -= amount
  when "deposit"
    amount = get_amount
    balance += amount
  when "view"
    nil
  else
    raise "Unkown '#{action}' action provided! Quitting...."
end

if action != "view"
  print_action(action, amount)
  view_balance(name, balance)
end
