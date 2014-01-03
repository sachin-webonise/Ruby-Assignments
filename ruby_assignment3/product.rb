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
        fields=record.split(" ")        
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
    puts "order order_details are: #{order_details}"
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

  def buy(order_details)
    
  end
end