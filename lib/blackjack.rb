require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  gets.chomp 
end

def end_game(num)
  if num > 21
  puts "Sorry, you hit #{num}. Thanks for playing!"
 end
end

def initial_round
  deal_card
  deal_card
  sum = deal_card + deal_card
  display_card_total(sum)
  #binding.pry
  sum 
end


def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
   return card_total 
  elsif input == 'h'
   return card_total += deal_card
  else invalid_command
    prompt_user
    binding.pry
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
  cards = initial_round
  until cards > 21 do
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards) 
end
    
