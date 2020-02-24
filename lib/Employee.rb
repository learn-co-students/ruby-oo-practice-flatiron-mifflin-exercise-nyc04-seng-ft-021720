class Employee

    attr_accessor :name, :salary, :manager_name
    @@all = []
    
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all.push(self)
    end
    
    
    
    def self.all
        @@all
    end
    
    def self.paid_over(salary)
        self.all.select do |salaries|
            salaries.salary > salary
        end
    end
    
    
    def self.find_by_department(department_name)
        self.all.find do |employees|
            employees.manager_name.department == department_name
        end
    end
    
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