class Subshop
  attr_accessor :name
  attr_reader :order
  attr_reader :order_ready_time

  def initialize
    @name = nil
    @order = []
    @order_ready_time = nil
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
      protein = gets.chomp.to_i

      case protein
      when 1
      when 2
      when 3
      when 4
      when 5
      when 6
      else
        puts "Error with Protein"
      end  

      puts "Would you like to add chedder cheese?"
      puts "1 = Yes"
      puts "2 = No"
      cheese = gets.chomp.to_i
      case cheese
      when 1
      when 2
      else
        puts "Error with Cheese"
      end  

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
        if v.include?(1) == true && count1 == 0
          @order.push("Lettuce")
          count1 += 1
        elsif v.include?(2) == true && count2 == 0
          @order.push("Tomato")
          count2 += 1
        elsif v.include?(3) == true && count3 == 0
          @order.push("Onion")
          count3 += 1
        elsif v.include?(4) == true && count4 == 0
          @order.push("Pickle")
          count4 += 1
        elsif v.include?(5) == true && count5 == 0
          @order.push("Bell Pepper")
          count5 += 1
        elsif v.include?(6) == true && count6 == 0
          @order.push("Black Olive")
          count6 += 1
        elsif v.include?(7) == true && count7 == 0
          @order.push("Black Olive")
          count7 += 1
        elsif v.include?(8) == true && count8 == 0
          @order.push("Black Olive")
          count8 += 1
        elsif v.include?(9) == true && count9 == 0
          @order.push("Black Olive")
          count9 += 1
        else
          puts "Error with Veggies"
        end 
      end
      puts "Order: #{@order}"
      puts "Awsome your order is set"
  end
  
  def add_drink      #stores custumer drink order in @order
  end

  def repeat_order(name)      #gets name on order then prints @order
    @order.push("pie")
    pp @order
    puts @order
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
