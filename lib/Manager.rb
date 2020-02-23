class Manager
	attr_reader		:name, :age, :department
	attr_writer		
	attr_accessor	

	@@all = []
	def self.all
		@@all
	end

	def initialize(name, department, age)
		if (dept_needs_manager?(department))
			@@all.push(self)
			@name = name
			@department = department
			@age = age
		else
			# do nothing
			p "Could not add #{name} as a manager, because the department either doesn't exist, or already has a manager."
		end
	end

	def hire_employee(name, salary)
		Employee.new(name, @department, salary)
	end

	def employees
		Employee.all.select do |e|
			e.department == @department
		end
	end

	def self.all_departments
		Department.all.select do |d|
			d.manager		# returns falsey if there is no manager
		end
	end

	def self.average_age
		# sum the values using 
		Manager.all.sum{ |m| m.age }.to_f / Manager.all.length
	end

	# private

	def dept_needs_manager?(department)
		if dept = self.dept_exists?(department)
			#check if they need a manager
			if dept.manager
				#already has a manager, can't add another
				false
			else 
				# doesn't have a manager, so let's add one!
				true
			end
		else
			# doesnt exist, return false
			false
		end
	end

	def dept_exists?(department)
		Department.all.find { |d| d == department }
	end	

end
