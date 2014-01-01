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

  def remove_product(product_id)

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
class Product
	def initialize(name,price, no_of_items, company_name)
      @name=name
      @price=price
      @no_of_items=no_of_items
      @company_name=company_name
	end
end

def ask_product_details
	puts "\nEnter product name, price, stock item, company_name: "
	product_properties=gets
	
	return product_properties
end

def choices_to_shopkeeper
	print "\n\n\tMENU \n\n1.Add Product \n2.Remove Product"
	print "\n3.View List of Products \n4.Search Product \n5.Edit product details"
	print "\n\nEnter your choice: "
	choice = gets
	case choice.to_i
		when 1
			product_details=ask_product_details
			shopkeeper=Shopkeeper.new
			shopkeeper.add_product(product_details)
			list_all_products
    when 2

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
		choices_to_shopkeeper
	elsif type.eql?("Customer\n")
		customer=Customer.new
  	choices_to_customer
	else
		puts "Wrong type entered." 	 
	end  
	print "\n\nDo you want to continue(yes/no): "
  choice=gets
  
end while(choice.eql?("yes\n"))
	
