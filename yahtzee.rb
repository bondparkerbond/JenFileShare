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
    if @user1_choice.length != 5
      (5 - @user1_choice.length).times do
        @user1_choice << unrolled.sample.to_s
      end #goes to times loop
      puts "Your second roll is: #{@user1_choice}"
      puts "Type the dice you want to keep, separated by commas, no spaces"
      @user1_choice = gets.strip.split(",")
      puts "#{@user1_choice}" #take out for final code!!!
      if @user1_choice.length != 5
        (5 - @user1_choice.length).times do
          @user1_choice << unrolled.sample.to_s
        end #times loop
      else #exiting after second roll
      end #for innermost if loop
    else #for keeping first choice and done
    end #outer if loop
    puts "Your final roll is (all three choices): #{@user1_choice}"
  end # goes to method
end #end of game class

game = Game.new
game.roll




#Roll # 2


#Roll # 3



#select which dice values to keep
#other player goes
#second roll
#third roll
#tally score
#next turn