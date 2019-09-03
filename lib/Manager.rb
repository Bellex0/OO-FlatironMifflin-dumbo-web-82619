class Manager
attr_reader :name, :department, :age
@@all = []

def initialize(name, department, age)
  @name = name
  @department = department
  @age = age
  @@all << self
end

def self.all
  @@all
end

def employees
  Employee.all.select do |employee|
    employee.manager_name == self
  end
end

def hire_employee(name, salary)
  Employee.new(name, salary, )



end
