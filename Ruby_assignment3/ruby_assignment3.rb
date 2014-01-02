  require 'fileutils'

  def choices_to_customer
  end

  def list_all_products
  	File.open("inventory", "r") do |file_name|
  		if file_name
  			list = IO.readlines(file_name)   			
  		else
        puts "Unable to open file!"
      end
      file_name.close	
      list.each do |item|
       print item
     end
   end
 end

 class Shopkeeper
  def add_product(product_details)
   File.open("inventory", "a+") do |aFile|
     if aFile
       aFile.syswrite(product_details)
     else
       puts "Unable to open file!"
     end	
     aFile.close
   end		
  end

  def remove_product(id_to_be_removed)                   ##############################################
  	File.open("inventory", "r") do |file_name|
      if file_name
        list = IO.readlines(file_name)   			
      else
        puts "Unable to open file!"
      end

      File.open("temp_file", "w") do |temp_file|
      end

      list.each do |record|
        if id_to_be_removed!=record[0].to_i
          File.open("temp_file", "a") do |temp_file|
            if temp_file
              temp_file.syswrite(record)
            else
              puts "Unable to open temp file!"
            end	
          end
        end
      end  		
    end
    FileUtils.mv('temp_file', 'inventory')
  end



  def search(product_name)
  end

  def edit(product_name)
  end
end

class Customer
  def list
  end

  def search(product_name)
  end

  def buy(product_name)
  end
end

def get_max_product_id                                 
  list=Array[]
  File.open("inventory", "r") do |file|
    if file
      list = IO.readlines(file)
    else
      puts "Unable to open file!"
    end	
    file.close
  end	
  max_product_id=0	
  list.each do |record|
    if max_product_id < record[0].to_i
      max_product_id=record[0].to_i
    end
  end
  print "\n\nMax product id: #{max_product_id}"
  max_product_id
end

def ask_product_details
  id=get_max_product_id
  id+=1
  product_properties=id.to_s
  puts "\nEnter product name, price, stock item, company_name: "
  rest_details=gets

  product_properties.concat(" #{rest_details}")
  return product_properties
end

def choices_to_shopkeeper
  print "\n\n\tMENU \n\n1.Add Product \n2.Remove Product"
  print "\n3.View List of Products \n4.Search Product \n5.Edit product details"
  print "\n\nEnter your choice: "
  choice = gets
  shopkeeper=Shopkeeper.new
  case choice.to_i
    when 1
      product_details=ask_product_details			
      shopkeeper.add_product(product_details)
      list_all_products
    when 2
      print "\n\nEnter id of the product to be removed: "
      id_to_be_removed=gets
      shopkeeper.remove_product(id_to_be_removed.to_i)
    when 3
      list_all_products
    when 4

    when 5

    else

  end
end


begin
  puts "Welcome to shop"
  puts "Enter your type (Shopkeeper/Customer) ?: "
  type = gets
  if type.eql?("Shopkeeper\n")
    shopkeeper=Shopkeeper.new
    begin
      choices_to_shopkeeper
      print "\n\nHey Shopkeeper do you want to continue(yes/no): "
      shopkeeper_choice=gets
    end while(shopkeeper_choice.eql?("yes\n"))
  elsif type.eql?("Customer\n")
    customer=Customer.new
    choices_to_customer
  else
    puts "Wrong type entered." 	 
  end  
print "\n\nDo you want to continue(yes/no): "
choice=gets

end while(choice.eql?("yes\n"))

