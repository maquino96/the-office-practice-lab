class Employee
    attr_accessor :name, :salary, :manager, :role
    @@all = []

    def initialize(name, salary, manager, role)
        @name = name
        @salary = salary
        @manager = manager
        @role = role
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        all.select{|employee| employee.salary > num}
    end
    
    def self.find_by_department(dept_name)
        all.find{|employee|employee.manager.department == dept_name}
    end

    def self.search_by_role(role_name)
        all.select{|employee|employee.role.name == role_name}
    end

    def get_promoted(role)
        self.role = role
        self.salary *= 1.5
    end
end
