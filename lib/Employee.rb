class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def salary
        @salary
    end

    def manager_name
        @manager
    end

    # return array of employees whose salaries are higher than num
    def self.paid_over(num)
        Employee.all.select {|emp| emp.salary > num}
    end

    # returns the first employee whose manager is working in 
        # the department specified in argument
    def self.find_by_department(department)
        Employee.all.select {|emp| emp.manager.department.include?(department)}.first
    end

    # returns array of all employees are within +/- 1000 of self
    def tax_bracket
        Employee.all.select {|emp| emp.salary <= self.salary + 1000 && emp.salary >= self.salary - 1000}
    end

end
