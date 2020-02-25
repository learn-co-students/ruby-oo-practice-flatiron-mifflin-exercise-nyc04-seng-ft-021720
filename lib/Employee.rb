class Employee
    attr_reader :name, :salary, :manager, :department

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

    def self.paid_over(fixnum)
        self.all.select { |employee| employee.salary > fixnum}
    end

    def self.find_by_department(dept)
        self.all.find { |empl| empl.manager.department == dept}
    end

    def tax_bracket
        @@all.select { |empl| empl.salary.between?((self.salary - 1000), (self.salary + 1000))}
    end

end



