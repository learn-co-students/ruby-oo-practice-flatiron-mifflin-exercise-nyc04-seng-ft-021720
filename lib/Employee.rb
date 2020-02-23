class Employee
	attr_reader		:name, :department, :salary
	attr_writer		
	attr_accessor	

	@@all = []
	def self.all
		@@all
	end

	def initialize(name, department, salary)
		@@all.push(self)
		@name = name
		@department = department
		@salary = salary
	end

	def manager_name
		@department.manager.name
	end

	def self.paid_over(amount)
		Employee.all.select do |e|
			e.salary > amount
		end
	end

	def self.find_by_department(department_string)
		department = Department.all.find{ |d| d.name == department_string }
		Employee.all.find{ |e| e.department == department }
	end

	def self.tax_bracket(salary_center)
		variance = 1_000
		Employee.all.select do |e|
			e.salary <= salary_center + variance && e.salary >= salary_center - variance
		end
	end

end
