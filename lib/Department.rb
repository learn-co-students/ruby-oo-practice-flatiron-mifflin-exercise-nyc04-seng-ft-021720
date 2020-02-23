class Department
	attr_reader		:name
	attr_writer		
	attr_accessor	

	@@all = []
	def self.all
		@@all
	end

	def initialize(name)
		@@all.push(self)
		@name = name
	end

	def manager
		Manager.all.find do |m|
			m.department == self
		end
	end

	def employees
		Employee.all.select do |e|
			e.department == self
		end
	end

end