require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

# MANAGERS

m_scott = Manager.new("Michael Scott", 43, "Scranton Branch")
d_wallace = Manager.new("David Wallace", 45, "Headquarters")

# EMPLOYEES

j_halpert = Employee.new("Jim Halpert", 50000, m_scott)
p_beasley = Employee.new("Pam Beasley", 49000, m_scott)
a_martin = Employee.new("Angela Martin", 45000, m_scott)
r_howard = Employee.new("Ryan Howard", 100000, d_wallace)


binding.pry
puts "done"
