class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, dept, age)
        @name = name
        @department = dept
        @age = age
        self.class.all << self
    end

    def self.all
        @@all
    end
    
    def employees
        Employee.all.select{|employee| employee.manager == self}
    end

    def roles
        employees.map(&:role).uniq
    end

    def self.all_departments
        all.map(&:department).uniq
    end

    def self.average_age
        total_age = all.sum(0.0){|manager| manager.age}
        total_age/(all.length)
    end

end
