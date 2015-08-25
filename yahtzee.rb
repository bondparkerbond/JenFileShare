class Game
  attr_accessor :unrolled, :user_choice

  def initialize
    @unrolled = [1,2,3,4,5,6]
    @user_choice = []
  end

  def roll 
    5.times do
      @user_choice << @unrolled.sample
    end # goes to times loop
    puts "You rolled: #{@user_choice}"
    puts "Type the dice you want to keep, separated by commas, no spaces"
    @user_choice = gets.strip.split(",")
    puts "#{@user_choice}" #take out for final code!!!
    #while true
      if @user_choice.length < 5
        (5 - @user_choice.length).times do
          @user_choice << unrolled.sample.to_s
        end #goes to times loop
        puts "Your second roll is: #{@user_choice}"
        puts "Type the dice you want to keep, separated by commas, no spaces"
        @user_choice = gets.strip.split(",")
        puts "#{@user_choice}" #take out for final code!!!
        
        if @user_choice.length < 5
          (5 - @user_choice.length).times do
            @user_choice << unrolled.sample.to_s
          end #times loop
        elsif @user_choice.length > 5
        #  @cheat = "1"
          puts "There are only 5 dice, what are you doing?"
        else #exiting after second roll
        end #for innermost if loop
        elsif @user_choice.length > 5
        #  @cheat = "1"
          puts "There are only 5 dice, what are you doing?"

      else #for keeping first choice and done

      end #outer if loop
    #end#ending while???
    #puts "Your final roll is (all three choices): #{@user1_choice}"
    @cheat = @user_choice.length
  end # goes to method
def turn
  @user_choice = []
  roll
  if @cheat != 5 
    puts "cheater"
    @user_choice =[]
    roll
  else
    puts "Your final roll is (all three choices): #{@user_choice}"
  end #end of cheat end loop
end #end of turn method
end #end of game class


class Player
  attr_accessor :name, :scorecard

  def initialize (name)
    @name = name
    @scorecard = []
  end #end of player class initialize method

  def add_players
    #will add in ability to add more players and name
    player_1 = "Parker"
  end #end of add player method

  def calculate_score
    #to be written later
  end # end of method calculate_score
end #end of player class


class ScoreCard
  attr_accessor :scorecard, :scoring_options, :total_score, :choice

  def initialize
    @scorecard = {
      upper_section: {
        aces: 0,
        twos: 0,
        threes: 0,
        fours: 0,
        fives: 0,
        sixes: 0,
      },
      lower_section: {
        three_of_a_kind: 0,
        four_of_a_kind: 0,
        full_house: 0,
        small_straight: 0,
        large_straight: 0,
        yahtzee: 0,
        chance: 0, 
      }
    }
    @scoring_options = { 
        '0' => ['0', 'Chance', 'Total of all Five Dice'],
        '1' => ['1', 'Aces', 'Total of Aces Only'],
        '2' => ['2', 'Twos', 'Total of Twos Only'],
        '3' => ['3', 'Threes', 'Total of Threes Only'],
        '4' => ['4', 'Fours', 'Total of Fours Only'],
        '5' => ['5', 'Fives', 'Total of Fives Only'],
        '6' => ['6', 'Sixes', 'Total of Sixes Only'],
        '7' => ['7', 'three_of_a_kind', 'Total of all Five Dice'],
        '8' => ['8', 'four_of_a_kind', 'Total of all Five Dice'],
        '9' => ['9', 'full_house', '25 Points'],
        '10' => ['10', 'small_straight', '30 Points'],
        '11' => ['11', 'large_straight', '40 Points'],
        '12' => ['12', 'yahtzee', '50 Points']
        }
    @choice = "0" #initializing choice variable
    @total_score = 0
  end #end of initialize method

  # def testing
  #   puts "Test Script"
  #   #puts "#{@scorecard}"
  #   puts "#{@scoring_options}"
  # end #end of testing method

#Upper Section Methods
  def aces(roll)
    num_of_aces = 0
    roll.each do |value|
      if value == '1'
        num_of_aces += 1
      else
        value
      end
    end
    @total_score += num_of_aces
  end

  def twos(roll)
    num_of_twos = 0
    roll.each do |value|
      if value == '2'
        num_of_twos += 2
      else
        value
      end
    end
    @total_score += num_of_twos
  end

  def threes(roll)
    num_of_threes = 0
    roll.each do |value|
      if value == '3'
        num_of_threes += 3
      else
        value
      end #if loop
    end #do loop
    @total_score += num_of_threes
  end #method

  def fours(roll)
    num_of_fours = 0
    roll.each do |value|
      if value == '4'
        num_of_fours += 4
      else
        value
      end #if loop
    end #do loop
    @total_score += num_of_fours
  end #method

  def fives(roll)
    num_of_fives = 0
    roll.each do |value|
      if value == '5'
        num_of_fives += 5
      else
        value
      end #if loop
    end #do loop
    @total_score += num_of_fives
  end #method

  def sixes(roll)
    num_of_sixes = 0
    roll.each do |value|
      if value == '6'
        num_of_sixes += 6
      else
        value
      end #if loop
    end #do loop
    @total_score += num_of_sixes
  end #method

# Lower Section Methods
  def three_of_a_kind(roll)
    score = 0
    roll.each do |value|
      score += value.to_i
    end  #each
    @total_score += score
  end #method

  def four_of_a_kind(roll)
    score = 0
    roll.each do |value|
      score += value.to_i
    end #each
    @total_score += score
  end #method

  def full_house
    @total_score += 25
  end #method

  def small_straight
    @total_score += 30
  end #method

  def large_straight
    @total_score += 40
  end #method

  def yahtzee
    @total_score += 50
  end #method

  def chance(roll)
    score = 0
    roll.each do |value|
      score += value.to_i
    end #each
    @total_score += score
  end #method

  def list_options
    puts " " #Optional blank line for improved layout
    @scoring_options.each do |number, description|
      puts "#{description[0]}. #{description[1]} - #{description[2]}" 
    end #do loop
  end #list options method

  def select_option
    puts "Please type score choice number: "
    @choice = gets.strip
    puts "#{@choice}"
    puts "#{@scoring_options[(@choice)]}"
    @scoring_options.delete(choice)
    # @scoring_options.delete_if{|key| key == ("2")}
    # @scoring_options.delete(@choice.to_s)
  end #end of select method

end #end of ScoreCard class!


game = Game.new
game.turn
scorecard = ScoreCard.new
#scorecard.testing #prints test scripts
scorecard.list_options
scorecard.select_option#Need to define method to iterate this
scorecard.list_options
scorecard.select_option
scorecard.list_options
scorecard.select_option



#select which dice values to keep
#other player goes
#second roll
#third roll
#tally score
#next turn