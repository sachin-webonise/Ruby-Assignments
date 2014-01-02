require 'fileutils'
require_relative 'product.rb'
require_relative 'shop.rb'
require_relative 'customer.rb'



class Shopkeeper < Product
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

  def remove_product(id_to_be_removed)
    list=Array[]                 
  	File.open("inventory", "r") do |file_name|
      if file_name
        list = IO.readlines(file_name)   			
      else
        puts "Unable to open file!"
      end
    end
    File.open("temp_file", "w") do |temp_file|
      list.each do |record|
        if id_to_be_removed!=record[0].to_i
          temp_file.syswrite(record)
        else
          puts "Record Removed"            
        end
      end
    end  
    FileUtils.mv('temp_file', 'inventory')
  end

  def edit(id_to_be_edited)
    list=Array[]       
    File.open("inventory", "r") do |file_name|
      if file_name
        list = IO.readlines(file_name)        
      else
        puts "Unable to open file!"
      end
    end
    
    File.open("temp_file", "w") do |temp_file|
      list.each do |record|
        if id_to_be_edited!=record[0].to_i
          temp_file.syswrite(record)
        else
          puts "\nLets edit details of the product with id= #{id_to_be_edited}: "
          shop=Shop.new
          product_details=shop.ask_product_details(id_to_be_edited)
          temp_file.syswrite(product_details)
        end
      end
    end
    FileUtils.mv('temp_file', 'inventory')  
  end
end 

shop=Shop.new
shop.go_to_shop




