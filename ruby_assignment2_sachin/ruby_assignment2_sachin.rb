
def sum_of_cubes(number1,number2)
 sum_of_cubes=0
 for i in number1..number2
  sum_of_cubes+= (i**3)
 end
 sum_of_cubes 
end

puts sum_of_cubes(2,4)

given_array = [1,2,2,3,3,4,5]
def non_duplicated_values(given_array)
 outer_index=0
 non_repeated_values=[""]
 non_repeated_element_index=0
 #flag_for_a_duplicate=true
 while outer_index < given_array.length do
   flag_for_a_duplicate=true
   inner_index=0
   while inner_index <= given_array.length do
     if (given_array[outer_index] == given_array[inner_index]) && (inner_index != outer_index)
       flag_for_a_duplicate=false       
     end 
    inner_index +=1
   end
   if flag_for_a_duplicate == true
     non_repeated_values[non_repeated_element_index]=given_array[outer_index]        
      non_repeated_element_index +=1
   end
  outer_index +=1
 end
non_repeated_values  
end

print non_duplicated_values(given_array)

def palindrome?(string)
  is_palindrome=true
  string.downcase!
  string.lstrip!
  string.rstrip!
  other_string=""
  words_in_string=string.split(" ");
  
  words_in_string.length.times do |index|
      other_string.concat(words_in_string[index])	
  end

  forward_moving_index=0
  back_moving_index=other_string.length-1
  while forward_moving_index < back_moving_index do
     if other_string[forward_moving_index] != other_string[back_moving_index]
        is_palindrome=false
     end
    forward_moving_index+=1
    back_moving_index-=1  
  end
  is_palindrome
end
puts palindrome?("Never odd or even")

def kaprekar_number?(number)
  kaprekar_number=false
  square=number**2
  first_operand=0
  second_operand=0
  number_in_string=""
  number_in_string=number.to_s
  number_of_digits=number_in_string.length

  number_of_digits.times do |index|
     last_digit=square%10   
     first_operand+=last_digit*(10**index)
     square/=10
  end
  second_operand=square
  if number==(first_operand+second_operand) 
      kapreker_number=true
  end
  kapreker_number
end
print kaprekar_number?(9)

def proc_lamda_dif_one
p = Proc.new { |x, y, z| puts 100 * x + 10 * y + z } 
p.call 14, 9, 2, 55

#l = lambda { |x, y, z| puts 100 * x + 10 * y + z } 
#l.call 14, 9, 2, 55
end
proc_lamda_dif_one

def proc_method
p = Proc.new { return "\nreturning from proc\n"} 
p.call
print "\nStatement after proc\n"
end
proc_method


def lamda_method
  l = lambda { return "\nreturning from lamda\n"}
  l.call
  print "\nStatement after lamda\n"
end
lamda_method
$catch_block=""
def block_vs_proc_lamda
  
  puts $catch_block
  print "In method: before yield\n"
  yield
  print "In method: after yield\n"
  
  p = Proc.new { |my_var| print "in method in proc #{my_var}\n"} 
  p.call 10
  l = lambda { |lamda_var| print "in method in lambda #{lamda_var}\n"}
  l.call 11 
  puts $catch_block
end
$catch_block=block_vs_proc_lamda{
  print "\nIn myBlock\n"
}



 


















