print "Entert your name: "
name = gets.chomp.capitalize


print "Enter your height: "
height = gets.to_i

weight = height - 110

if weight > 0 
  puts "#{name}, your ideal weight is #{weight}kg"
else
  puts "#{name}, you've had ideal weight!!"
end
