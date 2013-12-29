string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag"
string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."
#puts string1
#puts string2
array1 = string1.split(" ")

$flag=0 #1st<br/> NOT detected
$index = 0
while $index < array1.length  do
   while $flag==1 do
     
    if array1[$index] == "<br/>"
      $flag=0
      $index +=1
      break
    end
     print array1[$index] 
    $index +=1
   end
   if array1[$index] == "<br/>"
      $flag=1#1st<br/> detected
   end
   $index +=1
end
#################################################
print "\n"
$index = 0
while $index < array1.length  do
  if array1[$index] == "RUBY"
    position = $index +1
   puts "\nRUBY occured at position: #{position}" 

  end
 $index +=1
end 

#################################################
print "\n"
$arrayOfwordsFromString = string1.split(" ")
puts "\nno of words from string1 is: #{$arrayOfwordsFromString.length} and words are: "
def print_word_in_string1(indexOfWord)
  if indexOfWord > 0
    print_word_in_string1(indexOfWord-1)    
  end 
    print " #{$arrayOfwordsFromString[indexOfWord]}"
     
end
print_word_in_string1($arrayOfwordsFromString.length)
#################################################
print "\n\n"
#string1.upcase!
puts string1.upcase
#################################################
print "\n\n"
#string1.concat(string2)
puts string1
#################################################
print "\n\n"
time = Time.new
print "Current Date is: "
puts time.strftime("(%Y-%m-%d)\n")
#################################################
passedTime = Time.local(2012,1,12)
puts passedTime.strftime("(%Y-%m-%d)\n")
print passedTime.day
case passedTime.day
when 1
   print "st "
when 2
   print "nd "
when 3
   print "rd "
else
   print "th "
end
case passedTime.month
when 1
   print "Jan "
when 2
   print "Feb "
when 3
   print "Mar "
when 4
   print "April "
when 5
   print "May "
when 6
   print "June "
when 7
   print "July "
when 8
   print "Aug "
when 9
   print "Sept "
when 10
   print "Oct "
when 11
   print "Nov "
when 12
   print "Dec "
end
print passedTime.year
print "\n"


#################################################
require 'date'
today = Date.today
seven_days_from_now = (today + 7)
print "After 7 days: #{seven_days_from_now}\n"
#################################################
length_of_single_part = string1.length/4

puts string1.length
$index=0
$index_for_single_part=0
while $index<string1.length do
  puts "\nA Part: \n"
  while $index_for_single_part < length_of_single_part do
    print string1[$index]
    $index_for_single_part+=1
    $index+=1
  end
    
    $index_for_single_part=0  
end
print "\n\n\n\n"
##################################################

string_saperated_by_occurance_of_dot=string1.split(".")
#puts string_saperated_by_occurance_of_dot
words_from_splited_strings=["",""]
temp_word=""
#words_from_splited_strings=""
index=0
index_for_words_array=0
while index < string_saperated_by_occurance_of_dot.length do
 words_from_splited_strings[index]=string_saperated_by_occurance_of_dot[index].split(" ")
 words_from_splited_strings[index].reverse!
 index +=1

end
print "\n-------------now array is: ------------------------------\n"
index=0
while index < string_saperated_by_occurance_of_dot.length do
   print "\nPart of array\n"
   print words_from_splited_strings[index]
   index +=1
end
#####################################################
array = string1.split(" ")
print "\n------------------------------------------------------\n"
print array
$flag=0 #1st<br/> NOT detected
$index = 0
$index_for_str=0
str=[""]
while $index < array.length  do
   while $flag==1 do     
    if array[$index] == "<br/>"
      $flag=0
      $index +=1
      break
    end     
    $index +=1
   end
   if array[$index] == "<br/>"
      $flag=1#1st<br/> detected
   end
   str[$index_for_str]=array[$index]
   $index_for_str+=1
   $index +=1
end
print "\n----------------------------------------------------------\n"
print str
######################################################

################################################
print "\n\nLength of string1 is: #{string1.length}"
print "\nLength of string2 is: #{string2.length}\n"
#####################################################
time_1 = Time.new(2010,04,12)
time_2 = Time.new(2011,05,12)
if time_1.to_date == time_2.to_date
 print "\nDays are Same"
end
print "\nNumber of days between given dates are:#{(time_2-time_1)/(24*60*60)}"

######################################################
print "\n Date after 20 days is: "
today = Date.today
twenty_days_from_now = (today + 20)
print "After 7 days: #{twenty_days_from_now}\n"
######################################################
time1 = Time.new
puts "Time in array format : #{[time.day , time.month , time.year]}" 
######################################################
/^[a-z A-Z][\.|\_|\-]? [a-z A-Z 0-9]* [\@][a-z A-Z]+ [\.]? [a-z A-Z]/ #regex for webonise mail domain

