class NumbersInterface
  attr_reader :results_history

  def add
    puts "You selected the operation 'Add'"
    print "Enter the first number to add: "; a = gets.chomp
    print "Enter the second number to add: ";  b = gets.chomp


    calculate = Calculate.new(a, b)
    calculate.add

    puts "The sum of #{a} + #{b} = #{calculate.result}"
    puts "===================================================="
    
    @results_history = ("#{a} + #{b} = #{calculate.result}")
  end 

  def subtract
    puts "You selected the operation 'Subtraction'"
    print "Enter the first number to substract: "; a = gets.chomp.to_i
    print "Enter the second number to substract: ";  b = gets.chomp.to_i

    calculate = Calculate.new(a, b)
    calculate.subtract

    puts "The subtraction of #{a} - #{b} = #{calculate.result}"
    puts "===================================================="
        
    @results_history = ("#{a} - #{b} = #{calculate.result}")
  end

  def multiplicate
    puts "You selected the operation 'Multiplication'"
    print "Enter the first number to multiply: "; a = gets.chomp.to_i
    print "Enter the first number to multiply: ";  b = gets.chomp.to_i

    calculate = Calculate.new(a, b)
    calculate.multiplicate

    puts "The multiplication of #{a} * #{b} = #{calculate.result}"
    puts "===================================================="

    @results_history = ("#{a} * #{b} = #{calculate.result}")
  end

  def division
    puts "You selected the operation 'division'"
    print "Enter the first number to divide: "; a = gets.chomp.to_i
    print "Enter the first number to divide: ";  b = gets.chomp.to_i

    calculate = Calculate.new(a, b)
    calculate.division
  
    puts "The division of #{a} / #{b} = #{calculate.result}"
    puts "===================================================="
        
    @results_history = ("#{a} / #{b} = #{calculate.result}")
  end
end
