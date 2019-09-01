require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  # code #initial_round here
  sum = 0
  2.times do
    num = deal_card
    sum += num
  end
  puts "Your cards add up to #{sum}"
  return sum
end

def hit?(num)
  # code hit? here
  prompt_user
  hit_or_stay = get_user_input
  
  if hit_or_stay == "s"
    return num
  elsif hit_or_stay == "h"
    new_card = deal_card
    num += new_card
    return num
  else
    invalid_command 
    prompt_user
    get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  
  until total > 21
    total_hit = hit?(total)
    total = total_hit
    display_card_total(total)
  end
  end_game(total)
end
    
