# manager--department--employee
# manager -< employee
require 'pry'

class Manager
  attr_accessor :name, :department, :age
  
  @@all = [] 

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age.to_i
    save
  end

  def save
    @@all <<self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select{ |employee|
      employee.manager_name == self.name
    }
  end

  def hire_employee(employee_name, employee_salary)
    Employee.new(employee_name, employee_salary, self.name)
  end

  def self.all_departments
    self.all.map{|manager|
      manager.department
    }
  end

  def self.average_age 
    total_ages = self.all.reduce(0){ |memo, manager| 
      manager.age.to_f + memo.to_f
    }
    (total_ages / self.all.length).to_f
  end



  
end
