# This method takes two numbers and returns their sum of cubes
def sum_of_cubes(number1,number2)
  sum_of_cubes=0
  range=number1..number2
  range.each do |number|
    sum_of_cubes+= (number**3)
  end
  sum_of_cubes 
end

given_array = [1,2,2,3,3,4,5]
#This method takes an array and returns non-repeating elements
def get_non_duplicated(given_array)
  non_repeated_values=[""]
  non_repeated_index=0
  outer_index=0
  given_array.each do |first_num|
    flag_for_a_duplicate=true
    inner_index=0
    given_array.each do |second_num|
      if (first_num == second_num) && (inner_index \
          != outer_index)
        flag_for_a_duplicate=false       
      end 
      inner_index +=1
    end
    if flag_for_a_duplicate
      non_repeated_values[non_repeated_index]=first_num
      non_repeated_index +=1
    end
    outer_index +=1
  end
  non_repeated_values  
end

#This method takes a string returns true if it is palindrome and viceversa
def palindrome?(string)
  string.delete!(' ')
  string.downcase!
  reversed_string=string.reverse
  puts string
  puts reversed_string
  reversed_string.eql?(string)
end

#This method takes a number returns true if it is kaprekar number and viceversa
def kaprekar_number?(number)
  square=number**2
  first_operand=0
  number_in_string=""
  number_in_string=number.to_s
  number_of_digits=number_in_string.length
  number_of_digits.times do |index|
    last_digit=square%10   
    first_operand+=last_digit*(10**index)
    square/=10
  end
  number==(first_operand+square) 
end

#This method contains proc and lambda and gives error if lambda is called with\
#more or less number of parameters but no error with proc even if proc is called\
#more or less number of parameters
def proc_lamda_dif_one
  p = Proc.new { |num1, num2| puts num1+num2 } 
  p.call 50, 55, 60

  #l = lambda { |num1, num2| puts num1+num2 } 
  #l.call 50, 55, 60
end

#This method contain a proc and when return statement from proc is invoked\
#returns from method
def proc_method
  p = Proc.new { return "\nreturning from proc\n"}  
  p.call
  print "\nStatement after proc\n"
end

#This method contain a lambda and when return statement from lambda is invoked\
#returns to the line after lambda is called
def lamda_method
  l = lambda { return "\nreturning from lamda\n"}
  l.call
  print "\nStatement after lamda\n"
end

$catch_block=""


#This method tells diffrence between block vs proc_lambda
def block_vs_proc_lamda
  #puts $catch_block
  print "In method: before yield\n"
  yield
  print "In method: after yield\n"
  
  p = Proc.new { |my_var| print "in method in proc #{my_var}\n"} 
  p.call 10
  l = lambda { |lamda_var| print "in method in lambda #{lamda_var}\n"}
  l.call 11 
  #puts $catch_block
  10
end

print "\n Sum of cubes is:#{sum_of_cubes(2,4)}"
print "\n Non duplicated values from given array are: #{get_non_duplicated(given_array)}\n"

if palindrome?("Never odd or even")
  print "\nGiven string is a Palindrome\n"
else
  print "\nGiven string is a NOT palindrome"
end

if kaprekar_number?(9)
  print "\nGiven number is Kaprekar Number\n"
else
  print "\nGiven number is NOT kaprekar Number\n"
end

proc_lamda_dif_one
proc_method
lamda_method
block_vs_proc_lamda {
  print "\nIn myBlock\n"
}

