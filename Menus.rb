class Menus
  attr_reader :unit, :operation

  def options
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                     Options                      |"
    puts "|==================================================|"
    puts "|Options:                                          |"
    puts "|      1) Operations                               |"
    puts "|                                                  |"
    puts "|Others:                                           |"
    puts "|      2) History                                  |"
    puts "|      3) Exit                                     |"
    puts "===================================================="
    print "Enter the option number: "; @unit = gets.chomp.to_i
  end

  def operations
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                    Operations                    |"
    puts "|==================================================|"
    puts "|Operations:                                       |"
    puts "|      1) Add                                      |"
    puts "|      2) Subtract                                 |"
    puts "|      3) Multiplication                           |"
    puts "|      4) Division                                 |"
    puts "|                                                  |"
    puts "|Others:                                           |"
    puts "|      5) Back                                     |"
    puts "===================================================="
    print "Enter the option number: "; @operation = gets.chomp.to_i
    puts "===================================================="
  end

  def good_bye
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                  Good Bye!!!                     |"
    puts "===================================================="
  end

  def history(history)
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                   History                        |"
    puts "===================================================="

    history.each do |n|
      puts " " + n       
    end

    puts "===================================================="
  end

  def empty_history
    print "\e[2J\e[f"
    puts "===================================================="
    puts "Your history is empty!"
    puts "===================================================="
  end
end
