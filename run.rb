require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

michael = Manager.new("michael", "sales", 45)
david = Manager.new('david', 'corporate', 50)
jim = Employee.new("jim", 5000, "michael")
dwight = Employee.new("dwight", 5999, "michael")
pam = Employee.new("pam", 1, "michael")
jan = Employee.new("jan", 100000, "david")

binding.pry
puts "done"
