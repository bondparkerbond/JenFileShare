class Game
  attr_accessor :unrolled, :user1_choice

  def initialize
    @unrolled = [1,2,3,4,5,6]
    @user1_choice = []
  end

  def roll 
    5.times do
      @user1_choice << @unrolled.sample
    end # goes to times loop
    puts "You rolled: #{@user1_choice}"
    puts "Type the dice you want to keep, separated by commas, no spaces"
    @user1_choice = gets.strip.split(",")
    puts "#{@user1_choice}" #take out for final code!!!
    #while true
      if @user1_choice.length < 5
        (5 - @user1_choice.length).times do
          @user1_choice << unrolled.sample.to_s
        end #goes to times loop
        puts "Your second roll is: #{@user1_choice}"
        puts "Type the dice you want to keep, separated by commas, no spaces"
        @user1_choice = gets.strip.split(",")
        puts "#{@user1_choice}" #take out for final code!!!
        
        if @user1_choice.length < 5
          (5 - @user1_choice.length).times do
            @user1_choice << unrolled.sample.to_s
          end #times loop
        elsif @user1_choice.length > 5
        #  @cheat = "1"
          puts "There are only 5 dice, what are you doing?"
        else #exiting after second roll
        end #for innermost if loop
        elsif @user1_choice.length > 5
        #  @cheat = "1"
          puts "There are only 5 dice, what are you doing?"

      else #for keeping first choice and done

      end #outer if loop
    #end#ending while???
    #puts "Your final roll is (all three choices): #{@user1_choice}"
    @cheat = @user1_choice.length
  end # goes to method
def turn
  @user1_choice = []
  roll
  if @cheat != 5 
    puts "cheater"
    @user1_choice =[]
    roll
  else
    puts "Your final roll is (all three choices): #{@user1_choice}"
  end #end of cheat end loop
end #end of turn method
end #end of game class



class Player
  attr_accessor :name, :scorecard, :total_score

  def initialize (name)
    @name = name
    @scorecard = []
    @total_score = []
  end #end of player class initialize method

  def calculate_score
    #to be written later
  end # end of method calculate_score
end #end of player class

class ScoreCard
  attr_accessor :scorecard,

  def initialize (scorecard)
    @scorecard = {
      upper_section: {
        aces: 0,
        twos: 0,
        threes: 0,
        fours: 0,
        fives: 0,
        sixes: 0,
      },
      lower_sections: {
        three_of_a_kind: 0,
        four_of_a_kind: 0,
        full_house: 0,
        small_straight: 0,
        large_straight: 0,
        yahtzee: 0,
        chance: 0, 
      }
    }
end #end of initialize method



end #end of ScoreCard class!





game = Game.new
game.turn








#select which dice values to keep
#other player goes
#second roll
#third roll
#tally score
#next turn