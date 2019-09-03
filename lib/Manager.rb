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
  new_emp = Employee.new(name, salary, self)
  employees << new_emp
end

def self.all_departments
  self.all.map do |manager|
    manager.department 
  end
end

def self.average_age 
  ages =  self.all.map do |manager|
    manager.age
  end
  (ages.sum.to_f) / (ages.length.to_f)
end
  
  



end
