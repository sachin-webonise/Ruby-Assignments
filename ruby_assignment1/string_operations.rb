$string1 = "RUBY parses a file by looking for <br/> one of the special tags "+ 
"that tells it to start interpreting the text as RUBY code. The parser then "+
"executes all of the code it finds until it runs into a RUBY closing <br/> tag"
$string2 = "RUBY does not require (or support) explicit type definition in \
variable declaration; a variable's type is determined by the context in which \
the variable is used." 
$array1= $string1.split(" ")
 
#Q(5)This method takes array of words from any string and returns no of occurances
#of RUBY word 
def find_occurance_of(given_word)  
	count_ruby=0
	$array1.each do |word_in_arr|
		if word_in_arr == given_word
			count_ruby+=1
		end 		
  end
  count_ruby 
end
print "\nRuby Word occured #{find_occurance_of("RUBY")} times\n\n"

#Q(6)This method takes a word,finds a position in the string and returns a position
def find_position_of(given_word)
  pos_ruby=1
  print "\n#{given_word} occured at position: "
	$array1.each do |word_in_arr|
	  if word_in_arr == given_word
      print " #{pos_ruby}"      
	  end
  pos_ruby+=1
  end
end
find_position_of("RUBY")

#Q(7)This method prints the string recursively
def recursive_print(index_of_word)
	if index_of_word > 0
    recursive_print(index_of_word-1)    
  end 
  print " #{$array1[index_of_word]}"    
end
print "\nRecursive_print: \n"
recursive_print($array1.length)
print "\n\n"

#Q(8)This method capitalizes given string
def capitalise(str)
  puts str.upcase
end
print "\n\nAfter capitalising: \n"
capitalise($string1)

#Q(10)This method displays current date
def print_current_date
  time = Time.new
  print "\nCurrent Date is: "
  puts time.strftime("(%Y-%m-%d)\n\n")
end
print_current_date

#Q(11)This method prints given date
def print_given_date(day,month,year)
  date = Time.local(year,month,day)
  print date.day
  postfix=["st","nd","rd","th"]
  day=date.day
  exceptional_dates=11..13
  if exceptional_dates.include?(day)
    print postfix[3]
  else
    last_digit=day%10
    if [4..9].include?(last_digit)
      print postfix[3]
    else
      print postfix[last_digit-1]
    end
  end
  months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
  print " #{months[date.month-1]} "
  print date.year
  print "\n"
end 
print "\n\nGiven date is: "
print_given_date(12,1,2019)

#Q(12)This method adds given no of days to current date and prints the future date
def add_days(no_of_days)
	require 'date'
	today = Date.today
	future_day = (today + no_of_days)
	print "\n\nAfter #{no_of_days} days: #{future_day}\n\n"
end
add_days(7)

#Q(13)This method cuts the given string into given no of parts and displays on the
#console
def cut_string_into(no_of_parts)
  print "\n#{no_of_parts} parts of string are: \n"
  length_of_single_part = $string1.length/no_of_parts
  start_index=0
  end_index=length_of_single_part
  no_of_parts.times do |part_index|
    puts $string1[start_index ... end_index]
    start_index=end_index
    end_index+=length_of_single_part    
  end
  print "\n"   
end
cut_string_into(4)

#Q(14)This method divides strings and combines array in reverse word sequence
def divide_combine        
  dot_saperated_string=$string1.split(".")
  words=[""]
  temp_word=""
  index=0
  words_array_index=0
  dot_saperated_string.each do |string|
    words[index]=string.split(" ")
    words[index].reverse!
    index +=1
  end

  print "\n\n After dividing strings and combining array in reverse word sequence: \n"
  print words
end
divide_combine

#Q(15)This method removes html chars from given string
def remove_html_characters(string)
  array = string.split(" ")
  index_for_str=0
  str=[""]
  array.each do |element|
    if element == "<br/>"
      next
    end     
    str[index_for_str] = element    
    index_for_str +=1
  end
  print "\n\nAfter Removing HTML characters: \n"
  print str
end
remove_html_characters($string1)

#Q(17)This method displays length of given string
def find_length_of(string)
  print "\n\nLength of given string is: #{string.length}"  
end
find_length_of($string1)
find_length_of($string2)

#Q(18)This method compares 2 dates and calculates difference in no of days
def compare_dates_and_calculate_days(day1,month1,year1,day2,month2,year2)
  time_1 = Time.new(year1,month1,day1)
  time_2 = Time.new(year2,month2,day2)
  if time_1.to_date == time_2.to_date
    print "\n\nDays are Same"
  end
    print "\n\nNumber of days between given dates are:#{(time_2-time_1)/(24*60*60)}\n"
end
compare_dates_and_calculate_days(1,4,2014,1,4,2014)

#Q(19)This method prints date after specified no of days
def print_date_after(no_of_days)
  print "\n\n Date after #{no_of_days} days is: "
  future_date = (Date.today + no_of_days)
  print " #{future_date}\n" 
end

print_date_after(20)

#Q(20)This method prints in array format
def print_date_in_array_format
  time = Time.new
  print "Time in array format : [#{time.day} , #{time.month}, #{time.year}]" 
end
print_date_in_array_format

#Q(9)This method concatenates given strings str1<==str2
def combine_strings(str1,str2)
  puts str1.concat(str2)
end
print "\n\nAfter concatenation: \n\n"
combine_strings($string1,$string2)
print "\n"

#Q(21)
def regex_weboniselab_domain(email)
  if email =~ /(\w)+(\.?(\w)+)+@weboniselab(\.\w{2,3})+/
    print "\n Matching email with pattern\n"
  else
    print "\n NOT Matching email with pattern\n"
  end
end
regex_weboniselab_domain("sachin.s.wagh@Weboniselab.com")

#Q(22)
def regex_phone_number(phone_number)
#/^[\+]78________$/
  if phone_number =~ /\+78\d{8,8}/
    print "\n #{phone_number} is matching with pattern\n"
  else
    print "\n #{phone_number}is NOT matching with pattern\n"
  end
end
regex_phone_number("+7845546897")
regex_phone_number("+8845546897")

#Q(23)
def regex_to_find_site_and_type(url)
  if url =~ //
    print "\n Matching with pattern\n"
  else
    print "\n NOT Matching with pattern\n"
  end
end

#Q(24)
def regex_for_given_pattern(given_pattern)
 if given_pattern =~ //
    print "\n Matching with pattern\n"
 else
    print "\n NOT Matching with pattern\n"
 end
end

#Q(25)
def regex_for_given_date_format(given_date_format)
  if given_date_format =~ //
    print "\n Matching given date with pattern\n"
  else
    print "\n NOT Matching given date with pattern\n"
  end
end
