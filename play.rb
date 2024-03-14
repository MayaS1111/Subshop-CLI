
a = [1,2,3,4,5]
pp 1.include?(1)
=begin
order = []

puts "What veggies would you like to add?"
puts "1 = Lettuce"
puts "2 = Tomato"
puts "3 = Onion"
puts "4 = Pickle"
puts "5 = Bell Pepper"
puts "6 = Black Olive"
puts "7 = Giardiniera (SPICY)"
puts "8 = Jalapeno (SPICY)"
puts "9 = None"
puts "Enter all options that you like!"

veggie_choices = gets.chomp.split("")
veggie_array=[]
veggie_choices.each do |v|
  v = v.to_i
  veggie_array.push(v)
end  
pp veggie_array

count1 = 0
count2 = 0
count3 = 0
count4 = 0
count5 = 0
count6 = 0
count7 = 0
count8 = 0
count9 = 0

veggie_array.each do |v|
  if v.include(1) == true && count1 == 0
    order.push("Lettuce")
    count1 += 1
  elsif v.include(2) == true && count2 == 0
    order.push("Tomato")
    count2 += 1
  elsif v.include(3) == true && count3 == 0
    order.push("Onion")
    count3 += 1
  elsif v.include(4) == true && count4 == 0
    order.push("Pickle")
    count4 += 1
  elsif v.include(5) == true && count5 == 0
    order.push("Bell Pepper")
    count5 += 1
  elsif v.include(6) == true && count6 == 0
    order.push("Black Olive")
    count6 += 1
  elsif v.include(7) == true && count7 == 0
    order.push("Black Olive")
    count7 += 1
  elsif v.include(8) == true && count8 == 0
    order.push("Black Olive")
    count8 += 1
  elsif v.include(9) == true && count9 == 0
    order.push("Black Olive")
    count9 += 1
  else
    puts "Error with Veggies"
  end 
end
puts "Order: #{order}"
puts "Awsome your order is set"
=end
