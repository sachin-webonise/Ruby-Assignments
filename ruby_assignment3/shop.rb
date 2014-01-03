class Shop
  def initialize
    @product=Product.new
  end
  def choices_to_customer
    print "\n\n\tMENU"
    print "\n\n1.View List of Products \n4.Search Product \n5.Buy Product"
    print "\n\nEnter your choice: "
    choice = gets
    shopkeeper=Customer.new

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

  def ask_product_details(id)
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
      id=get_max_product_id
      id+=1
      product_details=ask_product_details(id)
      shopkeeper.add_product(product_details)
      shopkeeper.list_all_products
    when 2
      print "\n\nEnter id of the product to be removed: "
      id_to_be_removed=gets
      shopkeeper.remove_product(id_to_be_removed.to_i)
      shopkeeper.list_all_products
    when 3
      shopkeeper.list_all_products
    when 4
      print "\n\nEnter name of the product to search: "
      this_product=gets
      record=shopkeeper.search(this_product)
      print "\n\nDetails of the product you want are: #{record}"
    when 5
      print "\n\nEnter id of the product to be edited: "
      id_to_be_edited=gets
      shopkeeper.edit(id_to_be_edited.to_i)
      puts "\nAfter editing list of products is: "
      shopkeeper.list_all_products
    else
      puts "Wrong choice !!!"
    end
  end
  
  def go_to_shop
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
      puts "\nWrong type entered."   
    end  
    print "\n\nDo you want to continue(yes/no): "
    choice=gets
    end while(choice.eql?("yes\n"))
  end
end