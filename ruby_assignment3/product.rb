class Product
  def ask_details_and_search
    print "\n\nEnter name of the product to search: "
    this_product=gets
    record=search(this_product)
    if record
      print "\n\nDetails of the product you want are:\n #{record}"      
    end
  end
  

  def search(product_name)
    File.open("inventory", "r") do |file_name|
      if file_name
        list = IO.readlines(file_name)        
      else
        puts "\n\nUnable to open file while searching!"
      end
      record_found=false
      list.each do |record|
        fields=record.split(",")        
        if product_name.eql?("#{fields[1]}\n")
          record_found=true
          return record
        end
      end
      unless record_found
        print "\n\nNo product Found !!!!!!"
        return false
      end
    end
  end

  def list_all_products
    File.open("inventory", "r") do |file_name|
      if file_name
        list = IO.readlines(file_name)        
      else
        puts "Unable to open #{file_name}file!"
      end
      file_name.close 
      list.each do |item|
      print item
      end
    end
  end

  def store_order(order_details)
    order_record=""
    order_details.each do |order_attribute|
      order_attribute.to_s
      order_attribute.chomp!
      order_record.concat("#{order_attribute},")
    end
    puts "order record is : #{order_record}"
    File.open("orders", "a+") do |f|
      if f
        order_record.chop!
        order_record.concat("\n")
        f.syswrite(order_record)
      else
        puts "Unable to open #{f} file!"
      end 
      f.close
    end 
  end

  def search_by_id(product_id)
    File.open("inventory", "r") do |file_name|
      if file_name
        list = IO.readlines(file_name)        
      else
        puts "\n\nUnable to open file while searching!"
      end

      list.each do |record|
        fields=record.split(",")        
        if product_id.to_i==fields[0].to_i
          return record
        end
      end
      print "\n\nNo product Found !!!!!!"
      return false
      
    end
  end

  def buy(order_details)
    record=search_by_id(order_details[0])
    if record
      product_attributes=record.split(",")
      stock_item=product_attributes[3].to_i
      if stock_item > 0
        print "\n\n Product is available."
        print "\nEnter the no of items you want to buy: "
        no_of_items=gets
        total_price=no_of_items.to_i*product_attributes[2].to_i
        print "\n\nProduct name: #{product_attributes[1]}"
        print "\nTotal Price: #{total_price}"
      else
        print "\n\nProduct is NOT available ......."
      end
    end
  end
end