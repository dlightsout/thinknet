arr = []

# first variant
 i = 5
loop do 
  i +=5
  arr.push[i]
  break if i == 100
end
 
#second variant 
for p in 10..100
  if p % 5 == 0
    arr.push p
  end
end

