def welcome
 puts "Welcome to the Blackjack Table"
end
welcome

def deal_card
number = rand(1..11)
end


def display_card_total(number)
puts "Your cards add up to #{number}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
input = gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
card1 = deal_card 
card2 = deal_card
sum = card1 + card2
display_card_total(sum)
return sum
end

def hit?(card_total)
  prompt_user #asks the player if they want to hit or stay
  user_input = get_user_input #sets a variable to use for your if/else statement
  if user_input == "h"
    card_total += deal_card #increase your former total by the new number given by dealing another card
  elsif user_input == "s"
    card_total #return the number and prompt user to hit again
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
until card_total > 21
card_total = hit?(card_total)
display_card_total(card_total)
end_game(card_total)
end
end 
