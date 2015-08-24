#Put Methods we will use
#Set 5 arrays for 5 dice rolls.
#players, scorecards, game classes
#Give rule basics
#roll dice
unrolled = [1,2,3,4,5,6]
rolled = []
user1_choice = []
user2_choice = []
5.times do
rolled << unrolled.sample
end
puts "You rolled: #{rolled}"
puts "Type the dice you want to keep, separated by commas, no spaces"
user1_choice = gets.strip.split(",")
puts "#{user1_choice}" #take out for final code!!!
#Roll # 2
(5 - user1_choice.length).times do
  user1_choice << unrolled.sample.to_s
end
puts "Your second roll is: #{user1_choice}"
#Roll # 3
puts "Type the dice you want to keep, separated by commas, no spaces"
user1_choice = gets.strip.split(",")
puts "#{user1_choice}" #take out for final code!!!

(5 - user1_choice.length).times do
  user1_choice << unrolled.sample.to_s
end
puts "Your final roll is: #{user1_choice}"


#select which dice values to keep
#other player goes
#second roll
#third roll
#tally score
#next turn