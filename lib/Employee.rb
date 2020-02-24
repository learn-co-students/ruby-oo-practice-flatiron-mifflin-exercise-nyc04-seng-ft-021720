# manager--department--employee
# manager -< employee

require 'pry'

class Employee
  attr_accessor :name, :salary, :manager_name
  
  @@all = [] 

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary.to_i
    @manager_name = manager_name
    save
  end

  def save
    @@all <<self
  end

  def self.all
    @@all
  end

  def self.paid_over(num_to_check)
    self.all.select{ |employee|
      employee.salary > num_to_check
    }
  end

  def self.find_by_department(department_str)
    Manager.all.find{ |manager|
      manager.department == department_str
    }.employees.first
  end

  def tax_bracket
    @@all.select{ |employee|
      (-1000...1000).include?(employee.salary - self.salary) 
    }
  end

end