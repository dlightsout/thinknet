arr = []

# first variant
 i = 5
while true  
  i +=5
  arr << i
  break if i == 100
end
 
#second variant 
(10..100).each do |i|
  arr << i if i % 5 == 0
end

