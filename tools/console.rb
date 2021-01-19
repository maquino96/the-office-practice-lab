require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner
sales = Role.new("sales")
checkout = Role.new("checkout")
customer_support = Role.new("customer support")
technician = Role.new("technician")
michael = Manager.new("Michael Scott", "shoes", 28)
max = Manager.new("Max", "outerwear", 35)
beth = Manager.new("Beth", "technicians", 38)
doug = Manager.new("Doug", "general", 40)
dwight = Employee.new("Dwigt", 20, michael, sales)
jim = Employee.new("Jim", 15, max, checkout)
pam = Employee.new("Pam", 18, doug, customer_support)
robert = Employee.new("Robert", 23, beth, technician)

binding.pry
0 #leave this here to ensure binding.pry isn't the last linee