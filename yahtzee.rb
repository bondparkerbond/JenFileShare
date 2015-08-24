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
  attr_accessor :scorecard, :scoring_options, :total_score

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
      upper_section: {
        aces: 'Total of Aces Only',
        twos: 'Total of Twos Only',
        threes: 'Total of Threes Only',
        fours: 'Total of Fours Only',
        fives: 'Total of Fives Only',
        sixes: 'Total of Sixes Only'
      },
      lower_section: {
        three_of_a_kind: 'Total of all Five Dice',
        four_of_a_kind: 'Total of all Five Dice',
        full_house: '25 Points',
        small_straight: '30 Points',
        large_straight: '40 Points',
        yahtzee: '50 Points',
        chance: 'Total of all Five Dice'
      }
    }
    @total_score = 0
  end #end of initialize method

  def testing
    puts "Test Script"
    #puts "#{@scorecard}"
    puts "#{@scoring_options}"
  end #end of testing method

#Upper Section Methods
  def aces(roll)
    num_of_aces = 
    @total_score += num_of_aces
  end

  def twos(roll)
    #to add in later
  end #end of twos method

  def threes(roll)
    #to add in later
  end #end of threes method

  def fours(roll)
    #to add in later
  end #end of fours method

  def fives(roll)
    #to add in later
  end #end of fives method

  def sixes(roll)
    #to add in later
  end #end of sixes method

# Lower Section Methods
   # def three_of_a_kind(roll)
    # to add in later
   # end #end of three of a kind method

  # def four_of_a_kind(roll)
    # to add in later
  # end #end of four of a kind method

  # def full_house(roll)
    # to add in later
  # end #end of full house method

  # def small_straight(roll)
    # to add in later
  # end #end of small_straight method

  # def large_straight(roll)
    # to add in later
  # end #end of large_straight method

  # def yahtzee(roll)
  # to add in later, repeatable?
  # end #end of yahtzee method

  # def chance(roll)
    # to add in later
  # end #end of chance method




end #end of ScoreCard class!





game = Game.new
game.turn
#scorecard = ScoreCard.new
#scorecard.testing #prints test scripts









#select which dice values to keep
#other player goes
#second roll
#third roll
#tally score
#next turn