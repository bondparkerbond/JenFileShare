#require 'pry'
class Test
    attr_accessor :scoring_options, :choice
def initialize
    @scoring_options = { 
        '0' => ['0. Chance', 'Total of all Five Dice'],
        '1' => ['1. Aces', 'Total of Aces Only'],
        '2' => ['2. Twos', 'Total of Twos Only'],
        '3' => ['3. Threes', 'Total of Threes Only'],
        '4' => ['4. Fours', 'Total of Fours Only'],
        '5' => ['5. Fives', 'Total of Fives Only'],
        '6' => ['6. Sixes', 'Total of Sixes Only'],
        '7' => ['7. three_of_a_kind', 'Total of all Five Dice'],
        '8' => ['8. four_of_a_kind', 'Total of all Five Dice'],
        '9' => ['9. full_house', '25 Points'],
        '10' => ['10. small_straight', '30 Points'],
        '11' => ['11. large_straight', '40 Points'],
        '12' => ['12. yahtzee', '50 Points']
        }
    @choice = "0"
end #initialize method
    
# puts "#{@scoring_options} type 1-6"
def list_options
    puts " "
    @scoring_options.length.times do |number|
    puts "#{number} #{@scoring_options[(number.to_s)]}"  
    end #do loop
end #options metho
# binding.pry
def select_option
    puts "Please type score choice number: "
    @choice = gets.strip.to_s
    puts "#{@choice}"
    puts "#{@scoring_options[(@choice)]}"
    @scoring_options.delete(@choice)
    # @scoring_options.delete_if{|key| key == ("2")}
    # @scoring_options.delete(@choice.to_s)
end #end of select method
end #end of class

# def remaining_choices
#    @scoring_options << @scoring_options.except(@choice.to_s)
# end #end of remaining method

test = Test.new
test.list_options
test.select_option
test.list_options
# list_options
# select_option
# remaining_choices
# list_options
# select_option
# list_options

#waytoscore = gets.strip.to_i
#puts "you selected #{waytoscore}"

#puts "#{scoring_options["#{waytoscore}"]}"


