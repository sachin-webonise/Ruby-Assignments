$string1 = "RUBY parses a file by looking for <br/> one of the special tags \ 
that tells it to start interpreting the text as RUBY code. The parser then \ 
executes all of the code it finds until it runs into a RUBY closing <br/> tag"
$string2 = "RUBY does not require (or support) explicit type definition in \
variable declaration; a variable's type is determined by the context in which \
the variable is used."
   
array1= $string1.split(" ")
   
def find_occurance_of_ruby
	count_ruby=0
	array1.each do |element|
		if element == "RUBY"
			count+=1
		end 
			count_ruby 
  end
end
puts find_occurance_of_ruby

def find_position_of(word)
  pos_ruby=1
	array1.each do |element|
	if element == word
		print "\n#{word} occured at position: #{pos_ruby}"
	end
end
find_position_of("RUBY")

# this method does something.
def recursive_print(index_of_word)
	if index_of_word > 0
    recursive_print(index_of_word-1)    
  end 
  print " #{$arrayOfwordsFromString[index_of_word]}"    
end
recursive_print()

def capitalise
  puts $string1.upcase
end
capitalise

def combine_strings
  $string1.concat($string2)
  puts $string1
end

def print_current_date
  time = Time.new
  print "Current Date is: "
  puts time.strftime("(%Y-%m-%d)\n")
end
print_current_date

def print_given_date(day,month,year)
  date = Time.local(year,month,day)
  #puts date.strftime("(%Y-%m-%d)\n")
  print date.day
  postfix=["st","nd","rd","th"]
  day=date.day
  exceptional_dates=11..13
  if exceptional_dates.include?(day)
    print postfix[3]
  else
    index=day%10
    print postfix[index]
  end
  
  months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
  print "#{months[date.month+1]}"
  print passedTime.year
  print "\n"
end 

def add_days(no_of_days)
	require 'date'
	today = Date.today
	seven_days_from_now = (today + 7)
	print "After 7 days: #{seven_days_from_now}\n"
end
add_days(7)

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
end

  def divide_combine        
	string_saperated_by_occurance_of_dot=$string1.split(".")
	#puts string_saperated_by_occurance_of_dot
	words_from_splited_strings=["",""]
	temp_word=""
	#words_from_splited_strings=""
	index=0
	index_for_words_array=0
	while index < string_saperated_by_occurance_of_dot.length do
	 words_from_splited_strings[index]=string_saperated_by_\
         occurance_of_dot[index].split(" ")
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
  end

  def remove_html_characters
	
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
	end
         
         print "\nAfter Removing HTML characters: \n"
         print str
 end

 def find_string_lengths
   print "\n\nLength of $string1 is: #{$string1.length}"
   print "\nLength of $string2 is: #{$string2.length}\n"
 end

 def compare_dates_and_calculate_days(day1,month1,year1,day2,month2,year2)
   time_1 = Time.new(year1,month1,day1)
   time_2 = Time.new(year2,month2,day2)
   if time_1.to_date == time_2.to_date
     print "\nDays are Same"
   end
     print "\nNumber of days between given dates are:#{(time_2-time_1)/(24*60*60)}\n"
 end

 def print_future_date
   print "\n Date after 20 days is: "
   today = Date.today
   twenty_days_from_now = (today + 20)
   print " #{twenty_days_from_now}\n" 
 end

 def print_date_in_array_format
   time1 = Time.new
   puts "Time in array format : #{["time.day" , "time.month" , "time.year"]}" 
 end

 def regex_for_email_for_weboniselab_domain(email)
     if email =~ /^[a-z A-Z][\.|\_|\-][a-z A-Z 0-9]* [\@]weboniselab.com/
         print "\n Matching email with pattern\n"
     else
         print "\n NOT Matching email with pattern\n"
     end
 end

 def regex_for_phone_number_pattern(phone_number)
     #/^[\+]78________$/
     if phone_number =~ /(^[\+78])(\d[0-9][8])\z/
         print "\n Matching phone number with pattern\n"
     else
         print "\n NOT Matching phone number with pattern\n"
     end
 end

 def regex_to_find_site_and_type(url)
     if url =~ //
         print "\n Matching with pattern\n"
     else
         print "\n NOT Matching with pattern\n"
     end
 end

 def regex_for_given_pattern(given_pattern)
     if given_pattern =~ //
         print "\n Matching with pattern\n"
     else
         print "\n NOT Matching with pattern\n"
     end
 end

 def regex_for_given_date_format(given_date_format)
     if given_date_format =~ //
         print "\n Matching given date with pattern\n"
     else
         print "\n NOT Matching given date with pattern\n"
     end
 end





$arrayOfwordsFromString = $string1.split(" ")
puts "\nno of words from string1 is: #{$arrayOfwordsFromString.length} and words are: "
print "\n\n"

remove_html_characters
combine_strings
print_current_date
print_given_date(12,1,2012)


cut_string_into_given_no_of_parts(4)

divide_combine
remove_html_characters
find_string_lengths
compare_dates_and_calculate_days(12,04,2010,12,05,2011)
print_date_after_twenty_days
print_date_in_array_format
regex_for_email_for_weboniselab_domain("sachin.wagh@weboniselab.com")
regex_for_phone_number_pattern("+7898328732")
#regex_to_find_site_and_type("http://www.xyz.com/classid/17950142?type=mandatory")
#regex_for_given_pattern("a.bcdef0000000000000e+05")
#regex_for_given_date_format("11th Nov 2013 12:34:46")