class Subshop
  attr_accessor :name
  attr_reader :order
  attr_reader :order_ready_time

  def initialize
    @name = "No orders in yet"
    @order = []
    @order_ready_time = "00:00:00"
  end

  def run      #starts program
    puts "\n\nWelcome to Maya's Subshop!"
    puts "Would you like to: "
    puts "1 = Place an order"
    puts "2 = Repeat order"
    puts "3 = Check on order"
    puts "4 = Exit"
    puts "Please enter a corresponding number:"

    choice = gets.chomp.to_i
    #puts "**Choice: #{choice}"
    case choice
    when 1     #Place order
      place_order

    when 2     #Repeat order
      puts "\n\nWhat is the name on the order?"
      o_name = gets.chomp
      repeat_order(name) 
    when 3     #Check on order
      puts "\n\nWhat is the name on the order?"
      o_name = gets.chomp
      order_ready?(o_name)
    when 4     #Exit
      exit
    else
      puts "\n\n****INPUT NOT VALID. PLEASE TRY AGAIN!****"
      run
    end
  end

  def place_order      #starts order taking proccess
    puts "\n\nWhat is the name for the order?"
    @name = gets.chomp.capitalize
    puts "**Name: #{@name}"
    puts "\n\nWould you like a sub or drink?"
    puts "1 = Sub"
    puts "2 = Drink"
    puts "3 = Exit"
    puts "Please enter a corresponding number:"

    choice = gets.chomp.to_i
    case choice
    when 1
      add_sub
    when 2
      add_drink
    else
      puts "\n\n****INPUT NOT VALID. PLEASE TRY AGAIN!****"
    end 
  end

  def add_sub      #stores custumer sub order in @order
    puts "\n\nWhat protein would you like?"
      puts "1 = Chicken"
      puts "2 = Ham"
      puts "3 = Turkey"
      puts "4 = Gyro"
      puts "5 = Vegan Meat"
      puts "6 = None"
      puts "Please enter a corresponding number:"
      protein = gets.chomp.to_i
      case protein
      when 1
        @order.push("Chicken")
      when 2
        @order.push("Ham")
      when 3
        @order.push("Turkey")
      when 4
        @order.push("Gyro")
      when 5
        @order.push("Vegan Meat")
      else
        @order.push("No Protein")
      end  

      puts "\n\nWould you like to add chedder cheese?"
      puts "1 = Yes"
      puts "2 = No"
      puts "Please enter a corresponding number:"
      cheese = gets.chomp.to_i
      case cheese
      when 1
        @order.push("Chedder Cheese")
      else
        @order.push("No Cheese")
      end  

      puts "\n\nWhat veggies would you like to add?"
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
        if veggie_array.include?(9) == true && count9 == 0
          @order.push("No Veggies")
          count9 += 1
          break
        elsif veggie_array.include?(1) == true && count1 == 0
          @order.push("Lettuce")
          count1 += 1
        elsif veggie_array.include?(2) == true && count2 == 0
          @order.push("Tomato")
          count2 += 1
        elsif veggie_array.include?(3) == true && count3 == 0
          @order.push("Onion")
          count3 += 1
        elsif veggie_array.include?(4) == true && count4 == 0
          @order.push("Pickle")
          count4 += 1
        elsif veggie_array.include?(5) == true && count5 == 0
          @order.push("Bell Pepper")
          count5 += 1
        elsif veggie_array.include?(6) == true && count6 == 0
          @order.push("Black Olive")
          count6 += 1
        elsif veggie_array.include?(7) == true && count7 == 0
          @order.push("Giardiniera (SPICY)")
          count7 += 1
        elsif veggie_array.include?(8) == true && count8 == 0
          @order.push("Jalapeno (SPICY)")
          count8 += 1
        else
        end 
      end
      #puts "1:#{count1}, 2:#{count2}, 3:#{count3}, 4:#{count4}, 5:#{count5}, 6:#{count6}, 7:#{count7}, 8:#{count8}, 9:#{count9}"
      puts "Order: #{@order}"

      puts "\n\nWould you like to add a drink?"
      puts "1 = Yes"
      puts "2 = No"
      puts "Please enter a corresponding number:"
      answer = gets.chomp.to_i

      if answer == 1
        add_drink
      else  
        order_correct?
      end
  end
  
  def add_drink      #stores custumer drink order in @order
    
  end

  def order_correct?      #gets name on order then prints @order
    puts "\n\nYour order is: \n #{@order}"
    puts "\n\nIs your order correct?"
    puts "1 = Yes"
    puts "2 = No"
    puts "Please enter a corresponding number:"
    answer = gets.chomp.to_i
    case answer
    when 1
      puts "\n\nAwesome your order was sent to the kitchen.\nIt will be ready at #{@order_ready_time}"
    else
      puts "\n\nWould you like us to retake your order?"
      puts "1 = Yes"
      puts "2 = No"
      puts "Please enter a corresponding number:"
      answer = gets.chomp.to_i
      if answer == 1
        @order = []
        place_order
      else
        "Sorry for the error. Have a nice day."  
      end 
    end  

  end  

  def repeat_order(name)      #gets name on order then prints @order
    if name == @name
      puts "Your order is: \n #{@order}"
    else
      "****We have no order under the name #{name}****"
      run
    end  
  end  

  def order_ready?(name)      #gets name on order then says if order is ready or not (boolean)

=begin
      ready = Time.now + 30 #sec
        while Time.now < ready
          t = Time.at(ready.to_i - Time.now.to_i)
          p t.strftime('%H:%M:%S')
          sleep 1
        end
=end 

    puts "Searching order name..."
   
  end

  def exit      #stops program
    puts "\n\nBye, have a nice day!"
  end
end
