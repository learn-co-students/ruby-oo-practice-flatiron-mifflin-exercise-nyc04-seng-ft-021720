require 'pry'

class Manager
    attr_accessor :name, :age, :department, :employees

    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @employees = []
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def department
        @department
    end

    def age
        @age
    end

    def employees
        @employees << Employee.all.select {|emp| emp.manager == self}
    end

    # add employee with name and age arguments, add to @employees array
    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    # return array of all department names that all managers oversee
    def self.all_departments
        Manager.all.map {|mgr| mgr.department}
    end

    # return the average age of all managers, should be a float
    def self.average_age
        Manager.all.map {|mgr| mgr.age}.sum.to_f / Manager.all.count
    end

end
