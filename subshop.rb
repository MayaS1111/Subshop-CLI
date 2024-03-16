#Subshop class

class Subshop
  attr_accessor :name
  attr_reader :order
  attr_reader :order_ready_time

  def initialize
    @name = ""
    @order = []
    @order_ready_time = nil
    puts "\n\nWelcome to Maya's Subshop!"
  end

  def run      #starts program
    puts "\n\nWould you like to: "
    puts "1 = Place an order"
    puts "2 = Get order repeated"
    puts "3 = Check to see if order if ready"
    puts "4 = Exit"
    puts "Please enter a corresponding number:"

    choice = gets.chomp.to_i
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
    @name = gets.chomp
    puts "\n\nWould you like a sub or drink?"
    puts "1 = Sub"
    puts "2 = Drink (If you want a drink but no Sub)"
    puts "3 = Back"
    puts "Please enter a corresponding number:"

    choice = gets.chomp.to_i
    case choice
    when 1
      add_sub
    when 2
      add_drink
    when 3
      run   
    else
      puts "\n\n****INPUT NOT VALID. PLEASE TRY AGAIN!****"
      place_order
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

      puts "\n\nWould you like to add a drink?"
      puts "1 = Yes"
      puts "2 = No"
      puts "Please enter a corresponding number:"
      answer = gets.chomp.to_i
      if answer == 1
        add_drink
      else  
        @order.push("No Drink")
        order_correct?
      end
  end
  
  def add_drink      #stores custumer drink order in @order
      puts "\n\nWhat drink would you like? (We only serve large sizes)"
      puts "1 = Coke"
      puts "2 = Sprite"
      puts "3 = Lemonade"
      puts "4 = Water"
      puts "5 = None"
      puts "Please enter a corresponding number:"
      drink = gets.chomp.to_i
      if drink == 1
        @order.push("Drink: Coke")
      elsif drink == 2 
        @order.push("Drink: Sprite")
      elsif drink == 3
        @order.push("Drink: Lemonade")
      elsif drink == 4 
        @order.push("Drink: Water")
      else 
        @order.push("No Drink")
      end

      #puts "Order: #{@order}"
      order_correct?
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
      set_order_ready_time
      puts "\n\n****Awesome your order was sent to the kitchen.\nIt will be ready at #{@order_ready_time}****"
      run
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
        puts "Sorry for the error. Have a nice day."  
        run
      end 
    end  
  end  

  def repeat_order(name)      #gets name on order then prints @order
    if name == @name
      if @order != []
      puts "Your order is: \n #{@order}"
      run
      else 
        puts "****We have no order under the name #{name}****"
        run
      end
    else
      puts "****We have no order under that name****"
      run
    end  
  end  

  def set_order_ready_time
    @order_ready_time = Time.now + 30 #sec
  end 

  def order_ready?(name)      #gets name on order then says if order is ready or not 
    if @order_ready_time == nil
      puts "****Please place a order first****"
      run
    elsif name == @name    
        t = ""
        if Time.now < @order_ready_time
          t = Time.at(@order_ready_time.to_i - Time.now.to_i)
          t = t.strftime('%H:%M:%S')
          puts "\n\nYou have #{t} left"
          sleep 1
          run
        else
          puts "\n\nYour order is ready!" 
          run
        end
    else
      puts "****We have no order under the name #{name}****"
      run
    end
  end


  def exit      #stops program
    puts "\n\nBye, have a nice day!\n\n"
  end

  def get_order_length
    return @order.length
  end

  def get_name_on_order
    return @name
  end
end
