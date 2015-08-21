#require 'pry'

class List
  attr_accessor :name, :item_array, :choice #(paren are optional here)

  def initialize(name)
    @name = name
    @item_array = []
    @choice = 'empty'
  end

  def display_menu    
    options_list #Triple quotes """ keeps format from changing
    while @choice != '5'
      if @choice == '1'
        display_list
        options_list
      elsif  @choice == '2'
        puts 'Name of list item: '
        item_name = gets.strip
        puts 'Add a description: '
        description = gets.strip
        add_item(item_name, description)
        options_list
      elsif @choice == '3'
        puts 'Select item to remove: '
        item_name = gets.strip
        remove_item(item_name)
        options_list
      elsif @choice == '4' #Mark item as complete
        puts 'Select item to mark done: '
        completed_item = gets.strip
        item_done(completed_item)
        options_list
      else #emergency exit clause
          puts "Not a valid option!"
          options_list
      end
    end  #Do I have enought 'end' to account for all starts?
  end

    def options_list
      puts """ 
      1. Display List
      2. Add an item
      3. Remove item
      4. Mark an item as complete.
      5. Exit
    Make a selection:
      """
      @choice = gets.strip
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
        # puts 'Make another selection'
        # @choice = gets.strip
    end

    def item_done(completed)
      @item_array.map! { |item|
        if(item.item_name == completed)
          Item.new(item.item_name, 'Done')
        else
          item
        end #end of if loop!
        }
    end #item_done

    def remove_item(choice)
      @item_array.each do |item|
        if item.item_name == choice
          @item_array.delete(item)
        else
          item
        end
      end
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

#l = List.new("list stuff")  #diag
#l.add_item('milk', 'whole') #diag
#l.add_item('bread', 'wheat') #diag

#Welcome message
puts "Welcome to your list manager!"
puts "Please name your list: "
list_name = gets.strip
new_list = List.new(list_name)
new_list.display_menu
#Generate emply list, yes for class list to work
#binding.pry
