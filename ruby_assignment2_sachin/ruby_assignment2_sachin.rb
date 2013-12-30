
def sum_of_cubes(number1,number2)
 sum_of_cubes=0
 for i in number1..number2
  sum_of_cubes+= (i**3)
 end
 sum_of_cubes 
end#end method
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
   end#end inner while
   if flag_for_a_duplicate == true
     non_repeated_values[non_repeated_element_index]=given_array[outer_index]        
      non_repeated_element_index +=1
   end
  outer_index +=1
 end#end outer while
non_repeated_values  
end#end method
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
  end#end times
  puts other_string
  
  forward_moving_index=0
  back_moving_index=other_string.length-1
  while forward_moving_index < back_moving_index do
     if other_string[forward_moving_index] != other_string[back_moving_index]
        is_palindrome=false
     end
    forward_moving_index+=1
    back_moving_index-=1  
  end#end while
  

 is_palindrome
end# end method
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
print kaprekar_number?(90)

 


















