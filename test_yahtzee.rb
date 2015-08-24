require 'pry'

class Game
  attr_accessor :unrolled, :user_roll

  def initialize
    @unrolled = ['1', '2', '3', '4', '5', '6']
    @user_roll = []
  end

  def roll(number_of_dice)
    number_of_dice.times do
      @user_roll << @unrolled.sample
    end # goes to times loop
  end # goes to method

  def turn
    roll(5)
    puts "You rolled: #{@user_roll}"
    puts "Type the dice you want to keep, separated by commas, no spaces"
    @user_roll = gets.strip.split(",")
    if user_roll.length != 5
      roll(5 - user_roll.length)
      puts "Your second roll is: #{@user_roll}"
      puts "Type the dice you want to keep, separated by commas, no spaces"
      @user_roll = gets.strip.split(",")
      if user_roll.length != 5
        roll(5 - user_roll.length)
      end # inner if loop
    end #outer if loop
    puts "Your final roll is: #{@user_roll}"
  end # turn method
end #end of game class

class Player
  attr_accessor :name, :scorecard

  def initialize (name)
    @name = name
    @scorecard = []
  end 

  def calculate_score
    #to be written later
  end 
end 

class ScoreCard
  attr_accessor :scorecard, :scoring_options, :total_score

  def initialize(user_roll)
    @scorecard = {
        'aces' => 0,
        'twos' => 0,
        'threes' => 0,
        'fours' => 0,
        'fives' => 0,
        'sixes' => 0,
        'three of a kind' => 0,
        'four of a kind' => 0,
        'full house' => 0,
        'small straight' => 0,
        'large straight' => 0,
        'yahtzee' => 0,
        'chance' => 0, 
      }

    @scoring_options = { 
        'aces' => 'Total of Aces Only',
        'twos'=> 'Total of Twos Only',
        'threes' => 'Total of Threes Only',
        'fours' =>'Total of Fours Only',
        'fives' =>'Total of Fives Only',
        'sixes' =>'Total of Sixes Only',
        'three of a kind' => 'Total of all Five Dice',
        'four of a kind' => 'Total of all Five Dice',
        'full house' => '25 Points',
        'small straight' => '30 Points',
        'large straight' => '40 Points',
        'yahtzee' => '50 Points',
        'chance' => 'Total of all Five Dice'
      }

    @total_score = 0
    @roll = user_roll
  end 

def display_options
  puts """Score Card
              option            description
            ---------------------------------
       """
  @scoring_options.length.times do |item|
    puts """
          #{@scoring_options.keys[item]} -- #{@scoring_options[@scoring_options.keys[item]]} 
        """
  end
  puts 'Choose a scoring option: '
  choice = gets.strip
  case choice
    when 'aces'
      aces(@roll)
    when 'twos'
      twos(@roll)
    when 'threes'
      threes(@roll)
    when 'fours'
      fours(@roll)
    when 'fives'
      fives(@roll)
    when 'sixes'
      sixes(@roll)
    when 'three of a kind'
      three_of_a_kind(@roll)
    when 'four of a kind'
      four_of_a_kind(@roll)
    when 'full house'
      full_house(@roll)
    when 'small straight'
      small_straight(@roll)
    when 'large straight'
      large_straight(@roll)
    when 'yahtzee'
      yahtzee(@roll)
    when 'chance'
      chance(@roll)
    end
    @scoring_options.delete(choice)
    puts "#{@scoring_options}" #test
    puts "#{@scorecard}" 
    puts "#{@total_score}" #test
  end 

  # upper scorecard methods
  def aces(roll)
    num_of_aces = 0
    roll.each do |value|
      if value == '1'
        num_of_aces += 1
      else
        value
      end
    end
    @scorecard['aces'] = num_of_aces
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
    @scorecard['twos'] = num_of_twos
    @total_score += num_of_twos
  end

  def threes(roll)
    num_of_threes = 0
    roll.each do |value|
      if value == '3'
        num_of_threes += 3
      else
        value
      end
    end
    @scorecard['threes'] = num_of_threes
    @total_score += num_of_threes
  end

  def fours(roll)
    num_of_fours = 0
    roll.each do |value|
      if value == '4'
        num_of_fours += 4
      else
        value
      end
    end
    @scorecard['fours'] = num_of_fours
    @total_score += num_of_fours
  end

  def fives(roll)
    num_of_fives = 0
    roll.each do |value|
      if value == '5'
        num_of_fives += 5
      else
        value
      end
    end
    @scorecard['fives'] = num_of_fives
    @total_score += num_of_fives
  end

  def sixes(roll)
    num_of_sixes = 0
    roll.each do |value|
      if value == '6'
        num_of_sixes += 6
      else
        value
      end
    end
    @scorecard['sixes'] = num_of_sixes
    @total_score += num_of_sixes
  end

  #lower scorecard methods
  def three_of_a_kind(roll)
    score = 0
    roll.each do |value|
      score += value.to_i
    end 
    @scorecard['three of a kind'] = score
    @total_score += score
  end

  def four_of_a_kind(roll)
    score = 0
    roll.each do |value|
      score += value.to_i
    end 
    @scorecard['four of a kind'] = score
    @total_score += score
  end

  def full_house
    @scorecard['full house'] = 25
    @total_score += 25
  end

  def small_straight
    @scorecard['small straight'] = 30
    @total_score += 30
  end

  def large_straight
    @scorecard['large straight'] = 40
    @total_score += 40
  end

  def yahtzee
    @scorecard['yahtzee'] = 50
    @total_score += 50
  end

  def chance(roll)
    score = 0
    roll.each do |value|
      score += value.to_i
    end 
    @scorecard['chance'] = score
    @total_score += score
  end  

end #end of ScoreCard class!

roll = ['2', '4', '5', '2', '3']
scorecard = ScoreCard.new(roll)
scorecard.display_options
scorecard.display_options


# game = Game.new
# game.turn