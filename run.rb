require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

stanley = Manager.new("Stanley", "HR", 23)
katy = Manager.new("Katy", "IT", 24)
ryan = Manager.new("Ryan", "Finance", 25)


kevin = stanley.hire_employee('Kevin',50_000)
daniel = stanley.hire_employee('Daniel', 80_000)
stacey = katy.hire_employee('Stacey', 51_000)


p kevin.tax_bracket