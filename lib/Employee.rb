class Employee
attr_reader :name, :salary, :manager_name
@@all = []

def initialize(name, salary, manager_name)
  @name = name
  @salary = salary
  @manager_name = manager_name
  @@all << self
end

def self.all
  @@all
end

def self.paid_over(over_salary)
  self.all.select do |employee|
    employee.salary > over_salary
  end
end

def self.find_by_department(name)
  manager = Manager.all.select do |manager|
    manager.department == name
  end
  self.all.find do |employee|
    employee.manager_name == manager.name
  end
end
    

end


