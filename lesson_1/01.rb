print "Entert your name: "
name = gets.chomp.capitalize


print "Enter your height: "
height = gets.chomp.to_i

weight = height - 110

if weight < 0 
  puts "#{name}, you've had ideal weight!!"
else
  puts "#{name}, your ideal weight is #{weight}kg"
end
