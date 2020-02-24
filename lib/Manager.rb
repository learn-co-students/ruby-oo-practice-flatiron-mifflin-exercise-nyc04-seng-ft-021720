require_relative 'Employee.rb'

class Manager
    attr_accessor :name, :age, :employee, :department
    @@all = []
    
    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def employees
        employee = Employee.all.select{|employees| employees.manager == self}
        employee.map{|employees| employees.name}
    end

    def hire_employee(name, salary, manager)
        employee = Employee.new(name, salary, manager)
        "Hired!"
    end

    def average_age
        ages = @@all.map{|managers| managers.age}
        age_total = ages.reduce{|total, num| total+num}
        (age_total/ages.length).to_f
    end

    def all_departments
        @@all.map{|managers| managers.department}
    end
    
    def all
        @@all
    end


end
