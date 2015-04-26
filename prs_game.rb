CHOICES = { 'p'=>'Paper', 'r'=>'Rock', 's'=>'Scissors' }
puts "Welcome to play a classic game: Paper/Rock/Scissors"

def show_winning_message(winner_choice)
  case winner_choice
  when 'p' then puts "Paper wraps Rock!"
  when 'r' then puts "Rock smashes Scissors!"
  when 's' then puts "Scissors cuts Paper!"
  end
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
    puts "You picked #{user_choice_full_name}," \
         "and Computer picked #{computer_choice_full_name}."
    puts "It's a tie!"
  elsif (user_choice == 'p' && computer_choice == 'r') ||
        (user_choice == 'r' && computer_choice == 's') ||
        (user_choice == 's' && computer_choice == 'p')
    puts "You picked #{user_choice_full_name}," \
         "and Computer picked #{computer_choice_full_name}."
    show_winning_message(user_choice)
    puts "You won!"
  else
    puts "You picked #{user_choice_full_name}," \
         "and Computer picked #{computer_choice_full_name}."
    show_winning_message(computer_choice)
    puts "Computer won!"
  end

  puts "Play again?(y/n)"
  answer = gets.chomp
  break if answer.downcase == 'n'
end

puts "Good Bye!"
