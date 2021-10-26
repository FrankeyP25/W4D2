require_relative "employee.rb"

class Manager
    def initialize
        super
        @employees = []
    end

    def bonus(multiplier)
        total = 0
        @employees.each do |employee|
            total += employee.salary   
        end

        total * multiplier
    end


end

ned = Employee.new("Ned", "Founder", 1_000_000, nil)
darren = Manager.new("Darren", "TA Manager", 78_000, "Ned")
shawna = Employee.new("Shawna", "TA", 12_000, "Darren")
david = Employee.new("David", "TA", 10_000, "Darren")

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000