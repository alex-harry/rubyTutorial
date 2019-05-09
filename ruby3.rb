s= "This is Utopian"
puts s[0]#it returns the first character or the ASCII code of the first character
puts s[0].chr #using the chr method to convert from ASCII to character 
puts s[-1] # it returns the last character or the ASCII code of the last character
puts s[-1].chr #using the chr method to convert from ASCII to character 
puts s.index("i") # print the index of the character "i"
puts s[7..s.length]
puts s.index("i", 7) # the offset is 7 so it will start searching from the index number 7
puts s.include?("T")  #has "T" char ?
puts s.include?("Ut") #has "Ut" substring ?
puts s.include?("K") #has "K" substring ?
str ="Hello, " 
str.concat("World!") 
puts str 
usernameD = "Alex" # the username in the database
usernameU = "Alex" # the username that the user entered
puts " Welcome Alex " if usernameD.eql?(usernameU)
chars = s.scan(/./)
p chars
words = s.scan(/\w+/)
p words
wordsS = s.split(' ') # split the space separator
p wordsS
string = wordsS.join(" ") #join the array elements with a separator
p string
puts s.gsub('Utopian', 'Steemit') # replace utopian by steemit
dirObj = Dir.open('E:\Ruby26\bin') # create new object
Dir.delete(dir_name) 
Dir.unlink(dir_name) 
Dir.rmdir(dir_name)
for entry in Dir.entries(Dir.getwd)
  puts entry 
end 
Dir.entries(Dir.getwd) {|entry|  
  puts entry 
} 
Dir.entries(Dir.getwd) do |entry|  
  puts entry 
end
dirObj.each do |entry| # using each for literation
  puts entry 
end 
dirObj.each {|entry|     
  puts entry 
}
dirObj=Dir.open('E:\Ruby26\bin') #open 
#dirObj=Dir.new('E:\Ruby26\bin') 
puts dirObj.path 
puts dirObj.tell #the current position 
puts dirObj.read #next
puts dirObj.tell #the current position 
puts dirObj.read #next
puts dirObj.tell #the current position 
puts dirObj.read #next
#set the current position to 0 
dirObj.rewind 
puts dirObj.tell 
dirObj.close
r    => read only 
r+  => read/write 
w   => write only 
w+ => write/read 
a    => append at the end or create 
a+  => append at the start or create 
b    => binary
Delete(file1,file2,file3)
rename(from,to)
puts File.mtime("C:\\ls.rb") 
puts File.ctime("C:\\ls.rb") 
puts File.atime("C:\\ls.rb") 
exist?(file_path)
readable?(file_path)
writable?(file_path)
executable?(file_path)
directory?(file_name)