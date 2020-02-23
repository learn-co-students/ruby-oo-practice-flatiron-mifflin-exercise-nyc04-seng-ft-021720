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

    # add employee with name and age arguments, add to @employees array
    def hire_employee(name, salary)
        self.employees << name
        Employee.new(name, salary, self)
    end

    # return array of all department names that all managers oversee
    def self.all_departments
        Manager.all.map{|mgr| mgr.department}
    end

    # return the average age of all managers, should be a float
    def self.average_age
        manager_ages = self.all.map {|mgr| mgr.age}
        manager_ages.inject{|sum, el| sum + el}.to_f / manager_ages.size
    end

end
