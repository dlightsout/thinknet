print "Enter side a of the triangle: "
a = gets.chomp.to_f

print "Enter side b of the triangle: "
b = gets.chomp.to_f

print "Enter side c of the triangle: "
c = gets.chomp.to_f


sides = [a, b, c].sort

hypo = sides[2]

cathetus_1  = sides[0]
cathetus_2 = sides[1]

right_tri = hypo ** 2 == (cathetus_1 ** 2 + cathetus_2 ** 2 )
isosceles = cathetus_2 == cathetus_1


if isosceles
  if right_tri 
    puts "Треугольник прямоугольный и равнобедренный"
  else
    puts "Треугольник равнобедренный"
  end
else
  if right_tri
    puts "Треугольник прямоугольный"
  else
    puts "Треугольник не является ни прямоугольным, ни равнобедренным"
  end
end