class Role
    
    @@all = []
    attr_reader :name 

    def initialize (name)
        @name = name
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def employees
        Employee.all.select{|employee| employee.role == self}
    end 

    def managers
        employees.map(&:manager).uniq 
    end
    
    def add_employee(employee_name, employee_salary, manager)
        Employee.new(employee_name, employee_salary, manager, self)
    end 

end