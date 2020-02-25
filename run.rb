require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'



mike = Manager.new("Mike", "Sales", 43)
jeff = Manager.new("Jeff", "Operations", 45)
jose = Manager.new("Jose", "Marketing", 37)

fritz = Employee.new("Fritz", 49000, mike)
pablo = Employee.new("Pablo", 50500, mike)
rosa = Employee.new("Rosa", 51000, jeff)











binding.pry

"LAST LINE"