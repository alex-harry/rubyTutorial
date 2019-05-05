class Human
  @@NUMBER_OF_HUMANS=0
  #The Constructor
  def initialize(name, sex, age)
    @name =name
    @sex  =sex
    @age=age
    @legs=2
    @eyes=2
    @@NUMBER_OF_HUMANS += 1
  end
  attr_accessor :name, :age
  attr_reader :sex
  def move()
    #moving code
  end
  def sleep()
    #sleeping code
  end
  def drink()
    #drinking code
  end
  def Human.numberOfHumans
    return @@NUMBER_OF_HUMANS
  end
end
class Professor < Human
  attr_accessor :salary
  def initialize(name, sex, age, salary)
    super(name, sex, age)
    @salary=salary
    @state=""
  end
  def work
    #working code
  end
  def getHired(salary)
    @salary=salary
    @state="hired"
  end
  def getFired
    @salary=0
    @state="fired"
  end
  def profInfo
    s="Name: " << @name
    s << ", State: " << @state
    s << ", Salary: " << @salary.to_s
    return s
  end
end
class University
  def initialize(university_name, administrator)
    @university_name=university_name
    @administrator=administrator
    @profs=[]
  end
  def raiseProfessor(prof, raise)
    prof.salary += raise
    puts @administrator  + ": " + prof.name + " is raised!\n"
  end
  def hire(prof, salary)
    prof.getHired(salary)
    @profs.push(prof)
    puts @administrator  + ": " + prof.name + " is hired.\n"
  end
  def fire(prof)
    prof.getFired
    @profs.delete(prof)
    puts @administrator + prof.name + ": " + "is fired.\n"
  end
  def profsList
    return @profs
  end
end
#demo
university=University.new("Oxford", "Alex Harry")
$Alex=Professor.new("Alex", "m", 20, 2000)
$Tina =Professor.new("Christina", "f", 35, 4000)
$Sordin = Professor.new("Sordin", "m", 32, 3000)
def profsInfo
  puts "----------------"
  lst=[$Alex, $tina, $Sordin]
  for prof in lst
    puts prof.profInfo
  end
  puts "----------------"
end
puts "Hiring..."
university.hire($Alex, 2500)
university.hire($Tina, 2500)
university.hire($Sordin, 3000)
$Alex.profInfo
$Tina.profInfo
$Sordin.profInfo
puts "Firing Sordin..."
university.fire($Sordin)
profsInfo
university.raiseProfessor($Alex, 1000)
profsInfo
puts "--------------"
puts "The list of professors: "
for prof in university.profsList
  puts prof.name
end
class Human
  def move
  end
  def sleep
  end
  def drink
  end
end
class Professor < Human
end
h1=Human.new()
prof1=Professor.new()
class Human
  def move
    puts "The human is moving"
  end
  def sleep
    puts "The human is sleeping"
  end
  def drink
    puts "The human is drinking"
  end
  private :move, :drink
end
class Professor < Human
  def method
    drink
  end
end
h1=Human.new()
prof1=Professor.new()
prof1.method
class A
  def method1
    puts "A's method1 is called"
  end
  def method2
    puts "A's method2 calling method3.."
    method3
  end
  def method3
    puts "A's method3 is called"
  end
  private :method1, :method3
end
class B < A
  def method2 #override the protected method
    puts "B's method2 is called"
  end
  def method4
    puts "Calling method1..."
    method1
  end
end
a=A.new()
#Calling the parent's method2
a.method2
b=B.new()
#Calling the overriden method2 in the child b.method2
class A
def method1
puts "A's method1 is called.."
end
end
class B
def method1
puts "B's method2 is called.."
end
end
a=A.new()
b=B.new()
a.method1
b.method1
objects=[a, b]
for obj in objects
obj.method1
end
