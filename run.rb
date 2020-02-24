require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("Michael", 32, "office")
dwight = Manager.new("Dwight", 27, "office")
jim = Employee.new("Jim", 50_000, michael)

michael.hire_employee("Pam", 50_100, michael)
michael.hire_employee("Chad", 51_100, dwight)
p Manager.all
p Employee.all

p jim.tax_bracket

puts "done"
