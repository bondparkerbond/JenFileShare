class Game
  attr_accessor :unrolled, :user1_choice

  def initialize
    @unrolled = ['1', '2', '3', '4', '5', '6']
    @user1_choice = []
  end

  def roll(number_of_dice)
    number_of_dice.times do
      @user1_choice << @unrolled.sample
    end # goes to times loop
  end # goes to method

  def turn
    roll(5)
    puts "You rolled: #{@user1_choice}"
    puts "Type the dice you want to keep, separated by commas, no spaces"
    @user1_choice = gets.strip.split(",")
    if user1_choice.length != 5
      roll(5 - user1_choice.length)
      puts "Your second roll is: #{@user1_choice}"
      puts "Type the dice you want to keep, separated by commas, no spaces"
      @user1_choice = gets.strip.split(",")
      if user1_choice.length != 5
        roll(5 - user1_choice.length)
      end # inner if loop
    end #outer if loop
    puts "Your final roll is (all three choices): #{@user1_choice}"
  end # turn method

end #end of game class

game = Game.new
game.turn