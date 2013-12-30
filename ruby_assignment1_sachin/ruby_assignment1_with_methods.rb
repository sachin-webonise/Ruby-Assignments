$string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag"
$string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

class Assignment
   @@no_of_customers=0
    
   def initialize()
      @array1= $string1.split(" ")
   end
   def find_occurance_of_ruby()
      flag=0 #1st<br/> NOT detected
      index = 0
      print "\n\n-------------5) Find occurance of RUBY from string 1. ---------------------\n"
      while index < @array1.length  do
         while flag==1 do
            if @array1[index] == "<br/>"
              flag=0
              index +=1
              break
            end
            print @array1[index] 
            index +=1
         end
         if @array1[index] == "<br/>"
            flag=1#1st<br/> detected
         end
         index +=1
      end
     print "\n\n" 
   end#end method
   def find_position_of_ruby_word
     print "\n\n-------------6) Find the position where RUBY occures in the string 1.-----------\n\n"
     index = 0
     while index < @array1.length  do
       if @array1[index] == "RUBY"
         position = index +1
         puts "\nRUBY occured at position: #{position}" 
       end
       index +=1
     end 
  end#end method
  def print_array_using_recursive_function(indexOfWord)
      if indexOfWord > 0
         print_array_using_recursive_function(indexOfWord-1)    
      end 
    print " #{$arrayOfwordsFromString[indexOfWord]}"    
  end #end method
  def capitalise_string_1
    print "\n\n----------------------------8) Capitalise string 1-----------------------------\n\n"
    #puts string1.upcase!
    puts $string1.upcase
  end #end method
  def combine_strings
    print "\n\n----------------------------9) Combine string 1 & 2---------------------------------\n\n"
    #print "\n\n"
    $string1.concat($string2)
    puts $string1
  end #end method
  def print_current_date
    print "\n\n----------------------------10) Print current date------------------------------------\n\n"
    time = Time.new
    print "Current Date is: "
    puts time.strftime("(%Y-%m-%d)\n")
  end #end method
  def print_given_date(day,month,year)
    print "\n\n----------------------------11) print 12th Jan 2012----------------------------------\n\n"
    passedTime = Time.local(year,month,day)
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
    end#end case
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
    end#end case
    print passedTime.year
    print "\n"
  end #end method
  def add_seven_days_to_current_date
    print "\n\n----------------------------12) add 7 days in current date------------------------------\n\n"
    require 'date'
    today = Date.today
    seven_days_from_now = (today + 7)
    print "After 7 days: #{seven_days_from_now}\n"
  end #end method

  def cut_string_into_given_no_of_parts(no_of_parts)
        length_of_single_part = $string1.length/no_of_parts
	puts $string1.length
	index=0
	index_for_single_part=0
	while index<$string1.length do
	  puts "\nA Part of string: \n"
	  while index_for_single_part < length_of_single_part do
	    print $string1[index]
	    index_for_single_part+=1
	    index+=1
	  end
	  index_for_single_part=0  
	end
	print "\n\n\n\n"   
  end #end method
  def divide_string_and_combine_array
        print "\n\n--14) Divide the string 1 by occurances of '.'. Combine the array in reverse word sequence----\n\n"
	string_saperated_by_occurance_of_dot=$string1.split(".")
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
	print "\n Now array is: ------------: \n"
	index=0
	while index < string_saperated_by_occurance_of_dot.length do
	   print "\nPart of array\n"
	   print words_from_splited_strings[index]
	   index +=1
	end
  end #end method
  def remove_html_characters
	print "\n\n--------------15) Remove the HTML characters from string.--------------\n\n"
	array = $string1.split(" ")
	#print array
	 
        flag=0 #1st<br/> NOT detected
	index = 0
	index_for_str=0
	str=[""]
	while index < array.length  do
	   
	     if array[index] == "<br/>"
                index +=1
	     end     
	  str[index_for_str] = array[index]
         index +=1 
         index_for_str +=1
	end# end outer while
         
         print "\n--------------After Removing HTML characters------------------------------\n"
         print str
 end#end method
 def find_string_lengths
   print "\n\n------------------17) Find the length of string 1 & 2.--------------------\n\n"
   print "\n\nLength of $string1 is: #{$string1.length}"
   print "\nLength of $string2 is: #{$string2.length}\n"
 end
 def compare_dates_and_calculate_days(day1,month1,year1,day2,month2,year2)
   print "\n\n-----18)Compare two dates. Calculate the days between these two dates.----\n\n"
   time_1 = Time.new(year1,month1,day1)
   time_2 = Time.new(year2,month2,day2)
   if time_1.to_date == time_2.to_date
     print "\nDays are Same"
   end
     print "\nNumber of days between given dates are:#{(time_2-time_1)/(24*60*60)}\n"

 end#end method
 def print_date_after_twenty_days
   print "\n\n-------------19) Print date after 20 days from current date----------------\n\n"
   print "\n Date after 20 days is: "
   today = Date.today
   twenty_days_from_now = (today + 20)
   print "After 7 days: #{twenty_days_from_now}\n" 
 end#end method
 def print_date_in_array_format
   print "\n\n----------------20) Print date in array format.-----------------------------\n\n"
   time1 = Time.new
   puts "Time in array format : #{["time1.day" , "time1.month" , "time1.year"]}" 
 end#end method


     
end#end class

assignment_object=Assignment.new
assignment_object.find_occurance_of_ruby
assignment_object.find_position_of_ruby_word
print "\n\n---7) Create array of words in string 1 & print them using a recursive function.-----\n\n"
$arrayOfwordsFromString = $string1.split(" ")
puts "\nno of words from string1 is: #{$arrayOfwordsFromString.length} and words are: "
assignment_object.print_array_using_recursive_function($arrayOfwordsFromString.length)
print "\n\n"
assignment_object.capitalise_string_1
assignment_object.remove_html_characters
assignment_object.combine_strings
assignment_object.print_current_date
assignment_object.print_given_date(12,1,2012)
assignment_object.add_seven_days_to_current_date
print "\n\n------------------13...) Cut the string 1 into 4 parts & print it.------------------------\n\n"
assignment_object.cut_string_into_given_no_of_parts(4)

assignment_object.divide_string_and_combine_array
assignment_object.remove_html_characters
assignment_object.find_string_lengths
assignment_object.compare_dates_and_calculate_days(12,04,2010,12,05,2011)
assignment_object.print_date_after_twenty_days
assignment_object.print_date_in_array_format





