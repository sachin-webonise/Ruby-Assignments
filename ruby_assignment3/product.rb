class Product
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
      end
    end
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
end