class Manager
    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map { |mngr| mngr.department}
    end

    def self.average_age
        self.all.reduce(0) { |sum, mngr| sum + mngr.age}/self.all.length.to_f
    end


end
