require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
jason = Employee.new("Jason", 50000, "Belle")

belle = Manager.new("Belle", "sales", 27)


binding.pry
puts "done"
