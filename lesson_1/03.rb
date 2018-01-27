print "Enter side a of the triangle: "
a = gets.to_f

print "Enter side b of the triangle: "
b = gets.to_f

print "Enter side c of the triangle: "
c = gets.to_f

cathetus_1, cathetus_2, hypo = [a, b, c].sort

right_tri = hypo ** 2 == (cathetus_1 ** 2 + cathetus_2 ** 2 )
isosceles = cathetus_2 == cathetus_1

unless right_tri
  if hypo == cathetus_1 || hypo == cathetus_2
    puts "Треугольник равнобедренный"
  end
end

if isosceles
  if right_tri 
    puts "Треугольник прямоугольный и равнобедренный"
  end
else
  if right_tri
    puts "Треугольник прямоугольный"
  else
    puts "Треугольник не является ни прямоугольным, ни равнобедренным"
  end
end