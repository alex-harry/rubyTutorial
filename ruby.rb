#Create a file Object in Write mode, if it exists it'll be overwritten 
fileObj=File.new('E:\Ruby26\bin\utopian.txt', 'w') 
#Print a string to the file by using syswrite method of the file Object 
fileObj.syswrite("Hello from Ruby IO!") 
#Close the file object! 
fileObj.close
Reading 
fileObj=File.new('E:\Ruby26\bin\utopian.txt', 'r') 
#Read it 
fileSrc=fileObj.gets 
#print it 
puts fileSrc 
fileObj.close() #Close it. 
#Create a file Object in read mode 
fileObj=File.new('E:\Ruby26\bin\utopian.txt', 'r') 
#Read it 
fileObj.each_byte {|char|
  putc char 
} 
#Close it 
fileObj.close() 
begin          
#your normal code goes here.           
#error! 
rescue           
#rescue 
ensure          
#always happen! 
end 
begin  
puts 1/0 
rescue ZeroDivisionError  
puts "You are dividing by zero"  
exit(1) 
#terminate 
end 
begin  
puts 1/0 
rescue ZeroDivisionError
  puts "You are dividing by zero"  
ensure  
exit(1) 
#terminate 
end
#s is an object from what? 
puts s.class 
#what is the name of this class ? 
puts s.class.name 
#from what String  was inherited? 
puts String.superclass 
#the included modules in String 
p String.included_modules 
#each object has a unique id. 
s1="Hi" 
puts s1.object_id  #6 
s2="Hi" 
puts s2.object_id  #8 
s1="Hi" 
s2=s1 #points to s1 
puts s1.object_id #6 
puts s2.object_id #6
p Math.constants 
#get the local variables p local_variables 
$globString="What's up????" 
$anotherGlobString="CRUEL, WORLD!" 
#gets the global variables p global_variables
#get all of the methods in string 
methodsAry=String.methods 
p methodsAry 
class First < String  

end 
class Second < First  

end 
class Third < Second 

end 
c=Third 
while c  
   print(c)   
   print(" < ")  
   c=c.superclass  
end 
puts 
