class Manager

    attr_accessor :name, :department, :age 

    @@all = []

    def initialize(name, department, age)
        @name = name 
        @department = department 
        @age = age 
        @@all.push(self)
    end 


    def employees
        Employee.all.select do |employees|
            employees.manager = self 
        end 
    end 

    def self.all 
        @@all 
    end 

    def hire_employee(name, salary)
        Employee.new(name,salary, self)
    end 

    def self.all_departments
        self.all.map do |manager|
            manager.department 
        end 
    end 

    def self.average_age
       average = self.all.map do |manager|
            manager.age
       end 
       average.sum.to_f/self.all.count

    end



    


end
