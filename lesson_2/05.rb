puts "Enter date: "
date = gets.to_i

puts "Enter month(number): "
month = gets.to_i

puts "Enter year: "
year = gets.to_i 


month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] 

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 
  month_days[1]= 29
end

chosen_month = month_days.first(month - 1 )

number_of_days = 0 

chosen_month.each do |x|
  number_of_days += x 
end

number_of_days += date

puts number_of_days