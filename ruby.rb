arr = Array.new // create object from Array
arr = [ ] #create an array directly
arr = Array.new(4) #4 nils!
arr = Array.new(4){"test"} #array contains 4 elements all are test 
students = ["Alex", "Christina", "Rogina", "Sordin",...] # an array of students
puts students[0]  # print the first element
puts students[0..3] # print the 4 first elements 
puts students[-1] # print the first element from the bottom
puts "Alex included!" if students.include?("Alex") 
puts students.length 
puts students.size 
students.delete_at(3) #Sordin is removed. 
students.clear #delete all 
students.clear puts "Array is empty" 
if students.empty? 
students = ["Alex", "Christina", "Rogina", "Sordin"] 
students.insert(4, "Oscar") 
p students 
students = ["Alex", "Christina", "Rogina", "Sordin", "Oscar"]
students.concat(["Noah", "Charlie"])
p students 
puts students.last
puts students.last(2)
puts students.first
puts students.first(2)
langs = ["Pascal", "C", "Perl"] 
langs.replace(["Ruby", "Python", "C#", "Java"]) 
p langs 
reversedLangs = langs.reverse 
p langs 
p reversedLangs 
langs=["Pascal", "C", "Perl"] 
langs.reverse! 
p langs 
ary = [1, 2, 3 ,3, 5, 6, 7, 7, 7, 10] 
p ary 
uniqAry = ary.uniq 
p ary 
p uniqAry 
ary.uniq! 
p ary 
ary = [1, 2, 5,623, 14, 512] 
p ary.sort 
ary.sort! #destructive 
p ary
old= ["C", "Pascal", "Fortran"] 
new = ["Python", "Ruby", "Java"] 
all = old + new #or all = old.concat(new) 
p all 
all << "C#" # or we can use 'add c#'. 
p all 
all.push("Perl") # << perl 
p all
all.pop # remove the last element. 
p all
langs = ["C", "Python", "Ruby", "Pascal"] 
intrep_langs = ["Python", "Ruby", "Groovy"]
#union 
un = langs|intrep_langs 
p un 
#difference 
diff = langs-intrep_langs 
p diff
#intersection 
intSec = langs & intrep_langs 
p intSec
rng1to10 = 1..10  #10 is included 
p rng1to10.to_a  #to_a means to array 
rng1to9 = 1...10 #10 isn't included 
p rng1to9.to_a
rng=1..10 
p rng.to_a 
puts rng.min #min 
puts rng.max #max 
alphabet=('a'..'z').to_a 
p alphabet 
words = ('abc'..'abk').to_a 
p words 
hashTable = Hash.new #Create a new Hash object.
hasTable = { }
hashTable["name"] = "Alex" 
hashTable["age"] = 18 
hashTable["sex"] = 'm' 
p hashTable
hash.store("lang", "ruby") #Adding key, value by using store method.
hashTable[key] #returns the value 
hashTable.fetch(key) #returns the value
hash={"name"=>"Alex", "sex"=>"m", "age"=>18} 
puts "Name: " << hash["name"] 
puts "sex : " << hash.fetch("sex") 
hash={"name"=>"Alex", "sex"=>"m", "age"=>18} 
ary = hash.shift 
p ary 
hash = {"name"=>"Alex", "sex"=>"m", "age"=>18} 
invHash = hash.invert 
p invHash
puts invHash["Alex"] 
hash={"name"=>"Alex", "sex"=>"m", "age"=>18} 
puts hash.length #number of pairs 
hash={"name"=>"Alex", "sex"=>"m", "age"=>18}
ary = hash.to_a #convert to array 
p ary
ary = ["first", 1, "second", 2, "third", 3] 
hash = Hash[*ary] 
p hash
hash = {"name"=>"Alex", "sex"=>"m", "age"=>18} 
keys = hash.keys 
p keys 
vals = hash.values 
p vals
