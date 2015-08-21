require 'pry'

class List
  attr_accessor( :name, :item_array) #(paren are optional here)

  def initialize(name)
    @name = name
    @item_array = []
  end

  def display_menu
    while true
      puts """ 
    What would you like to do?
      1. Display List
      2. Add an item
      3. Remove item
      4. Mark an item as complete.
      5. Exit
      """ #Triple quotes """ keeps format from changing
      choice = gets.strip
      if choice == '1'
        display_list
      elsif  choice == '2'
        puts 'Name of list item: '
        item_name = gets.strip
        puts 'Add a description: '
        description = gets.strip
        add_item(item_name, description)
          

      elsif choice == '3'
            
      end

      
    end  #Do I have enought 'end' to account for all starts?
  end

    def add_item(name, description)
    @item_array << Item.new(name, description) #need (name) to call value
    # << is called push, or shuttle operator.
    #The scope of name, and description are local,
    #as such they could be renamed and still work
    end

    def display_list # "#{}" is called interpolation
        @item_array.each do |item|
        puts item.item_name + ' -- ' + item.description
    end
  end

end



class Item
  attr_accessor :item_name, :description

  def initialize(item_name, description) #Need orange item_name 
    #to call the @i_n = i_n so it knows to call from user choice
    @item_name = item_name
    @description = description
  end
end

#binding.pry




