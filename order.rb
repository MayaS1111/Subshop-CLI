class Order
  attr_accessor :name, :order

  def initialize
    @name = name
    @order = order
  end

  def run
    puts "Welcome to Maya's Subshop!\n"
    puts "Would you like to: "
    puts "1 = Place an order"
    puts "2 = Check on order"
    puts "3 = Exit"
    puts "Please enter a corresponding number"

    choice = gets.chomp
    case choice
    when 1
      place_order
    when 2
      puts "What is the name on the order"
      o_name = gets.chomp
      order_ready(o_name)
    when 3
      exit
    else
      "Input not valid. Please enter an integer."

  end

  def place_order
    puts "what is the name for the order?"
    self.name = gets.chomp
    puts "Would you like a sub or drink?"
    puts "1 = Sub"
    puts "2 = Drink"
    puts "3 = Exit"
    puts "Please enter a corresponding number"
  end

  def order_ready(name)
    puts "Searching order name..."
  end

  def exit
    puts "Bye, have a nice day!"
  end
