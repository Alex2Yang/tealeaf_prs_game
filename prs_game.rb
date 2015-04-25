# 1.all choices
CHOICES = { 'p'=>'Paper', 'r'=>'Rock', 's'=>'Scissors' }

puts "Welcome to play a classic game: Paper/Rock/Scissors"

# say choice
def say_choice(user_choice, computer_choice)
  puts "You picked #{user_choice},and Computer picked #{computer_choice}."
end

# @TA, I'm in doubt whether show_winning_msg method is more clear than display_winning_message method, which use case..when..end
def show_winning_msg(winner_choice, loser_choice)
  puts "#{winner_choice} wraps #{loser_choice}!"
end


loop do

# 2.get player's choice
  begin
    puts "Choose One: (P/R/S)"
    user_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(user_choice)
  user_choice_full_name = CHOICES[user_choice]

# 3.get computer's choice
  computer_choice = CHOICES.keys.sample
  computer_choice_full_name = CHOICES[computer_choice]

# 4.compare
  if user_choice == computer_choice
    say_choice(user_choice,computer_choice)
    puts "It's a tie!"
  elsif (user_choice == 'p' && computer_choice == 'r') || (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice == 'p')
    say_choice(user_choice_full_name, computer_choice_full_name)
    show_winning_msg(user_choice_full_name, computer_choice_full_name)
    puts "You won!"
  else
    say_choice(user_choice_full_name, computer_choice_full_name)
    show_winning_msg(computer_choice_full_name, user_choice_full_name)
    puts "You won!"
  end

puts "Play again?(y/n)"
ans = gets.chomp
break if ans.downcase == 'n'
end

puts "Good Bye!"
