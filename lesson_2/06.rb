cart = {}
loop do 
  puts "name of purchase(type stop, if you want to stop): "
  purchase = gets.chomp
  break if purchase == "stop"

  puts "price for one item: "
  price = gets.to_f

  puts "number of items"
  quantity = gets.to_f

  cart[purchase] = {price: price, quantity: quantity}
end


sum = 0 
total_price = 0 

cart.each do |product, value|
  sum = value[:price] * value[:quantity]
  puts "Товар #{product}, цена:#{value[:price]} , количество:#{value[:quantity]}"
  total_price +=sum
end

puts total_price