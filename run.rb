require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here

sales_dept = Department.new('Sales')
mfg_dept = Department.new('Manufacturing')
hr_dept = Department.new('Human Resources')
shipping_dept = Department.new('Shipping')

michael = Manager.new('Michael Scott', sales_dept, 55)
dave = Manager.new('Dave', mfg_dept, 31)
crystal = Manager.new('Crystal', hr_dept, 89)

pam = michael.hire_employee('Pam', 50_500)
jim = michael.hire_employee('Jim', 50_000)
bill = dave.hire_employee('Bill', 60_000)
daryl = dave.hire_employee('Daryl', 90_000)
angela = crystal.hire_employee('Angela', 30_060)
steve = crystal.hire_employee('Steve', 25_700)

p 'Manager name: ' + michael.name
p 'Department:'
	p michael.department
p 'Age: ' + michael.age.to_s
p 'Employees:'
	p michael.employees
p 'All Managers:'
	p Manager.all
p 'All Departments with Managers:'
	p Manager.all_departments
p 'Average Age of all Managers: ' +	Manager.average_age.to_s

p '---------------'

p 'Employee Name: ' + pam.name
p 'Salary: ' + pam.salary.to_s
p 'Manager Name: ' + pam.manager_name
p 'All Employees:'
	p Employee.all
p 'All Employees making over 50k:'
	p Employee.paid_over(50_000)
p 'A single employee from a the HR dept:'
	p Employee.find_by_department('Human Resources')
p 'Employees whose salaries are around 50k:'
	p Employee.tax_bracket(50_000)




# binding.pry
puts "done"
