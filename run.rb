require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

# create Managers and assign name, age and department
m_scott = Manager.new("Michael Scott", 43, "Scranton Branch")
d_wallace = Manager.new("David Wallace", 45, "Headquarters")

# set variable to create Employees by invoking the #hire_employee method in Managers.rb
j_halpert = m_scott.hire_employee("Jim Halpert", 50000)
# create Employee "Jim Halpert"
j_halpert
p_beasley = m_scott.hire_employee("Pam Beasley", 30000)
# create Employee "Pam Beasley"
p_beasley
a_martin = m_scott.hire_employee("Angela Martin", 45000)
# create Employee "Angela Martin"
a_martin
r_howard = d_wallace.hire_employee("Ryan Howard", 100000)
# create Employee "Ryan Howard"
r_howard


binding.pry
puts "done"
