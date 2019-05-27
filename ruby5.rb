<?xml version="1.0" encoding="UTF-8"?>
<!-
    Document   : products.xml
    Created on : May 27, 2019, 08:20 AM
    Author     : Alex-Harry
    Description:
        Purpose of the document follows.
--> 
<products>       
      <product>
            <id>1</id>
            <name>Product1</name>
            <price>20</price>
       </product>
       <product>
            <id>2</id>
            <name>Product2</name>
            <price>40</price>
        </product>       
        <product> 
             <id>3</id>
            <name>Product3</name>
           <price>70</price>
       </product>             
       <product>
            <id>4</id>
            <name>Product4</name>
            <price>30</price>
       </product>
</products>
<table>
   <tr>
      <th>id</th>
      <th>name</th>
      <th>price</th>
   </tr>
   <tr>
      <td>1</td>
      <td>Product1</td>
      <td>20</td>
   <tr>
   <tr>
      <td>2</td>
      <td>Product2</td>
      <td>40</td>
   <tr>
   <tr>
      <td>3</td>
      <td>Product3</td>
      <td>70</td>
   <tr>
   <tr>
      <td>4</td>
      <td>Product4</td>
      <td>30</td>
   <tr>
</table>
#STEP 1 (import rexml module) 
require "rexml/document" 
include REXML 
#STEP 2 (load the xml document) xmlDOC=Document.new(File.new("products.xml"))
xmlDOC.elements.each("products/product/name") do |element|
  puts element.text 
end
#Outpout =>
Product1
Product2
Product3
Product4
<name>Product1</name> 
<name>Product2</name>
<name>Product3</name>
<name>Product4</name>
ids=[] 
xmlDOC.elements.each("products/product/id") do |element|
  ids.push(element.text) 
end 
p ids 
#output =>
[1,2,3,4]
sum=0 
xmlDOC.elements.each("products/product/price") do |element|
    sum += element.text.to_i 
end 
puts "Total: "+ sum.to_s 
<tag attr1=val1 attr2=val2> D </tag>
require "rexml/document"  
require "rexml/streamlistener"  
include REXML
class ProductsStreamer
    include StreamListener
    def initialize
      @bPrice=false
      @sum=0
    end    
    def tag_start(tag_name, attrs)
      if (tag_name=="price") then
        @bPrice=true
      end
    end
    def tag_end(tag_name)
      @bPrice=false
    end
    def text(data)
        if @bPrice then
            @sum += data.to_i
        end
    end
    def get_total_sum
        return @sum 
    end
end
<start attr1=val attr2=val2 ....> DATA </start>
    def tag_start(tag_name, attrs)
      if (tag_name=="price") then

       end
    end 
def tag_start(tag_name, attrs)
      if (tag_name=="price") then
        @inPrice=true
      end
end
def tag_end(tag_name)
     @inPrice=false
end
ps=ProductsStreamer.new
Document.parse_stream(File.new("products.xml"), ps)
puts bs.get_total_sum 