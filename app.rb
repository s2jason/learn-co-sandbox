#If you're under 21 years old, you can't rent a car at all.
#If you're over 21, you can rent with a $20 additional fee per day.
#If you're in NY, you also pay a state flat fee of $25 dollars.
#If you're in MI, you also pay a flat fee of $20.
#If you're over 25, you don't pay any additional fees.

#Need age, state, and how many days of renting
#fee/day = $20
#state fees = NY - $25 , MI - $20

#Greet the user
puts "Welcome to the thunderdome, please enter your age to rent a horse"
#get the user age 
age = gets.strip.to_i
puts "#{age}"
#if age is less than 21, tell the user they can't rent  
minimum_rental_age = 21
#if the age is over 25, tell them they can rent with no fee 
if age < 22
  puts "Sorry loser, you're too young"
elsif age >= 25
  puts "You're old AF, no fees"
#otherwise, ask their state and how many days they are renting 
else
  puts "How many days will you be renting MF?"
  days_renting = gets.strip.to_i
  puts "Please enter 2 digit state code"
  state = gets.strip
  fee_per_day = 20
#set fee to be number of days times fee per day
  fee = days_renting * fee_per_day
#if they are in michigan - add 20 
    case state
    when "MI"
    fee += 20
#if they are in NY - add 25     
    when "NY"
    fee += 25
    end  
#tell the user their total fee
  puts "Give me #{fee} now"
end


