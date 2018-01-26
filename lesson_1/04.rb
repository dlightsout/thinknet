require 'mathn'

print "Enter number a:"
a = gets.chomp.to_f

print "Enter number b:"
b = gets.chomp.to_f

print "Enter number c:"
c = gets.chomp.to_f




formula = b**2 - 4 * a * c



x_1 = (-b + Math.sqrt(formula)) / (2 * a)

x_2 = (-b - Math.sqrt(formula)) / (2 * a)




if formula < 0 
  puts "D = #{formula}, Корней нет"
elsif formula > 0
  puts "D = #{formula}, x1= #{x_1} x2= #{x_2} "
else
  puts "D = #{formula}, x = #{x_1}"
end
  
