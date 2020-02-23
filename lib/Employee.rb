class Employee
    attr_accessor :name, :salary, :manager, :department

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager.name
        @department = manager.department
        @@all << self
    end

    def self.all
        @@all
    end

    # binding.pry

    # return array of employees whose salaries are higher than self
    def self.paid_over(num)
        Employee.all.select {|emp| emp.salary > num}
    end

    # returns the first employee whose manager is working in 
        # the department specified in argument
        # this deliverable is not clear
    def self.find_by_department(department)
        Manager.all.find {|emp| emp.
    end

    # returns array of all employees are within +/- 1000 of self
    def tax_bracket
        salary = self.salary
        tax = @@all.map do |employees|
            if employees.salary <= (salary+1000) && employees.salary >= (salary-1000)
                employees
            end
        end
        tax.compact
    end

end
