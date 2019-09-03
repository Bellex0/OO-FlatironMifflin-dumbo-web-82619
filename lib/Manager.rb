class Manager
attr_reader :name, :department, :age
@@all = []

def initialize(name, department, age)
  @name = name
  @department = department
  @age = age
  = manager_name
  @@all << self
end

def self.all
  @@all
end
end
