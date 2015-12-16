
# creating empty arrays
cart_items = []
unavaliable_items = []

puts "Hello! I welcome you to our store!"
puts "What is your name?"

# requesting for the user name
name = gets.chomp

puts "What would you like to add to your shopping cart?"
puts "You may choose from the list below!"

# storing items in array
store_items = [
  "old paperback book",
  "potato",
  "red",
  "dried lemon",
  "frankincense",
  "medical herb",
  "saffron",
  "glass spice jar",
  "red fabric",
  "handicrafts",
  "small persian rug",
  "medium persian rug",
  "large persian rug",
  "extra large persian rug"
]
puts

#printing items to the console
store_items.each do |item|
  puts "* #{item}"
end

puts
puts "Please, type your choice!"

# requesting for items from user
while true
  add_item = gets.chomp.downcase
  if add_item == "finished"
    puts
    break
  elsif store_items.include?(add_item) == true
    cart_items.push(add_item)
    puts "Anything else?"
  elsif store_items.include?(add_item) != true
    puts "We do not carry this item at the moment!"
    puts "Anything else?"
    unavaliable_items.push(add_item)
  else
  end
end

# printing list of items added by user to console
puts "#{name}, thank you for shopping in our online store!"
puts "You have added following items to your cart:"
puts
cart_items.each do |item|
  puts "* #{item}"
end

# printing list of unavaliable items entered by user to console
puts
puts "We notice that you have inqired items that we do not carry at the moment!"
puts "As soon as the item become avaliable, we will notify you promptly!"
puts
unavaliable_items.each do |item|
  puts "* #{item}"
end
