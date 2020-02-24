require_relative 'Manager.rb'
class Employee
    attr_accessor :name, :manager, :salary
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def paid_over(num)
        overpaid = @@all.select{|employees| employees.salary > num}
        overpaid.map{|overpaids| overpaids.name}
    end

    def find_by_department(departments)
        departo = @@all.find{|employees| employees.manager.department == departments}
        departo.name
    end

    def tax_bracket
        salaryMan = @@all.select{|employees| ((self.salary - 1000)..(self.salary + 1000)).include?(employees.salary)}
        salaryMan.map{|salary| salary.name}
    end

    def self.all
        @@all
    end
end
#employees.salary.between?((self.salary - 1000),(self.salary + 1000))