class Subshop
  attr_accessor :name
  attr_reader :order
  attr_reader :order_ready_time

  def initialize
    @name = name
    @order = order
    @order_ready_time = order_ready_time
  end

  def run
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
    when 1
      place_order
    when 2
      puts "\n\nWhat is the name on the order?"
      o_name = gets.chomp
      order_ready?(o_name)
    when 3
      exit
    else
      puts "\n\n****INPUT NOT VALID. PLEASE TRY AGAIN!****"
      run
    end
  end

  def place_order
    puts "\n\nWhat is the name for the order?"
    self.name = gets.chomp.capitalize
    #puts "**Name: #{self.name}"
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

  def add_sub
    puts "\n\nWhat protein would you like?"
      puts "1 = Chicken"
      puts "2 = Ham"
      puts "3 = Turkey"
      puts "4 = Gyro"
      puts "5 = Vegan Meat"
      puts "6 = None"
      protein = gets.chomp.to_i

      puts "Would you like to add chedder cheese?"
      puts "1 = Yes"
      puts "2 = No"
      cheese = gets.chomp.to_i

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
      veggie_array = gets.chomp.split("").
      #use includes???

      puts "Awsome your order is set"
  end
  
  def add_drink
  end

  def repeat_order(name)
    pp this.order
    #puts this.order
  end  

  def order_ready?(name)
    puts "Searching order name..."
  end

  def exit
    puts "Bye, have a nice day!"
  end
end
