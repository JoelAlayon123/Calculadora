class WrongOption
  attr_reader :try_again

  def print_wrong_option
    print "\e[2J\e[f"
    puts "===================================================="
    puts "You entered an invalid option"
    
    loop do
      puts "===================================================="
      print "Do you want to try again?? "
      @try_again = gets.chomp.to_s.capitalize

      if @try_again == "Yes"
        break
      elsif @try_again == "No"
        break
      else
        puts "Enter: Yes/No"
      end
    end
  end
end
