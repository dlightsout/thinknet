print "Enter number a:"
a = gets.to_f
print "Enter number b:"
b = gets.to_f
print "Enter number c:"
c = gets.to_f

discrminant = b**2 - 4 * a * c


if discrminant < 0 
  puts "D = #{discrminant}, Корней нет"
elsif discrminant > 0
  puts "D = #{discrminant}, x1= #{(-b + Math.sqrt(discrminant)) / (2 * a)} x2= #{(-b - Math.sqrt(discrminant)) / (2 * a)} "
else
  puts "D = #{discrminant}, x = #{-b / (2 * a)}"
end