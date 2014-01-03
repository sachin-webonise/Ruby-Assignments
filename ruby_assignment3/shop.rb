class Shop
  def initialize
    @product=Product.new
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
      attributes=record.split(",")
      if max_product_id < attributes[0].to_i
        max_product_id=attributes[0].to_i
      end
    end
    print "\n\nMax product id: #{max_product_id}"
    max_product_id.to_i
  end

  def ask_product_details(id)
    puts "\nEnter product name: "
    product_name=gets

    puts "\nEnter product price: "
    price=gets

    puts "\nEnter product stock item: "
    stock=gets

    puts "\nEnter product company name of the product: "
    company_name=gets
    
    return [id.to_s,product_name,price,stock,company_name]
  end

  def go_to_shop
    begin
      puts "Welcome to shop"
      print "\n\n\tTYPE of Person \n\n1.Shopkeeper \n2.Customer"
      puts "\n Enter your type: "
      type = gets

    if type.to_i==1
      shopkeeper=Shopkeeper.new
      begin
        shopkeeper.choices_to_shopkeeper
        print "\n\nHey Shopkeeper do you want to continue(y/n): "
        shopkeeper_choice=gets
      end while(shopkeeper_choice.casecmp("y\n")==0)
    elsif type.to_i==2
      customer=Customer.new
      begin
        customer.choices_to_customer
        print "\n\nHey Customer do you want to continue(y/n): "
        customer_choice=gets
        puts customer_choice.casecmp("y\n")
      end while(customer_choice.casecmp("y\n")==0)  
    else
      puts "\nWrong type entered."   
    end  
    
    print "\n\nDo you want to continue(y/n): "
    choice=gets
    end while(choice.casecmp("y\n")==0)
  end
end