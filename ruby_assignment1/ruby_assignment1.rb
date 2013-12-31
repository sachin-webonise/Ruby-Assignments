$string1 = "RUBY parses a file by looking for <br/> one of the special tags "+ 
"that tells it to start interpreting the text as RUBY code. The parser then "+
"executes all of the code it finds until it runs into a RUBY closing <br/> tag"
$string2 = "RUBY does not require (or support) explicit type definition in \
variable declaration; a variable's type is determined by the context in which \
the variable is used."
 puts $string1  
$array1= $string1.split(" ")
   
def find_occurance_of_ruby  
	count_ruby=0
	$array1.each do |element|
		if element == "RUBY"
			count_ruby+=1
		end 		
  end
  count_ruby 
end
print "#{find_occurance_of_ruby}"

def find_position_of(word)
  pos_ruby=1
	$array1.each do |element|
	  if element == word
      print "\n#{word} occured at position: #{pos_ruby}\n"      
	  end
  pos_ruby+=1
  end
end
find_position_of("RUBY")

# this method does something.
def recursive_print(index_of_word)
	if index_of_word > 0
    recursive_print(index_of_word-1)    
  end 
  print " #{$array1[index_of_word]}"    
end
print "\nRecursive_print: \n"
recursive_print($array1.length)
print "\n\n"

def capitalise
  puts $string1.upcase
end
print "\nAfter capitalising: \n"
capitalise

def print_current_date
  time = Time.new
  print "\nCurrent Date is: "
  puts time.strftime("(%Y-%m-%d)\n")
end
print_current_date

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
print "\nGiven date is: "
print_given_date(12,1,2019)

def add_days(no_of_days)
	require 'date'
	today = Date.today
	future_day = (today + no_of_days)
	print "After #{no_of_days} days: #{future_day}\n\n"
end
add_days(7)

def cut_string_into(no_of_parts)
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
#puts $string1

def divide_combine        
  dot_saperated_string=$string1.split(".")
  words_from_splited_strings[]
  temp_word=""
  index=0
  words_array_index=0
  while index < dot_saperated_string.length do
    words_from_splited_strings[index]=string_saperated_by_\
              occurance_of_dot[index].split(" ")
    words_from_splited_strings[index].reverse!
    index +=1
  end

  print "\n Now array is: ------------: \n"
  index=0
  while index < dot_saperated_string.length do
    print "\nPart of array\n"
    print words_from_splited_strings[index]
    index +=1
  end
end

def remove_html_characters
  array = $string1.split(" ")
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
def combine_strings
  puts $string1.concat($string2)
end
print "\n\nAfter concatenation: \n\n"
combine_strings
print "\n"

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
