require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
jason = Employee.new("Jason", 50000, "Belle")
ben = Employee.new("Jason", 80000, "Belle")
fiona = Employee.new("Fiona", 60000, "Belle")

belle = Manager.new("Belle", "sales", 27)
mia = Manager.new("Mia", "IT", 31)


binding.pry
puts "done"
