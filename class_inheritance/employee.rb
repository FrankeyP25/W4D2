class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end
end



class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        total = 0
        @employees.each do |employee|
            total += employee.salary   
        end

        total * multiplier
    end

    def add_employee(person)
        @employees << person if person.boss == self.name
    end


end

ned = Employee.new("Ned", "Founder", 1_000_000, nil)
darren = Manager.new("Darren", "TA Manager", 78_000, "Ned")
shawna = Employee.new("Shawna", "TA", 12_000, "Darren")
david = Employee.new("David", "TA", 10_000, "Darren")

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000

darren.add_employee(shawna)
darren.add_employee(david)
p darren.employees
p darren.bonus(4) # => 88_000