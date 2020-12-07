class OtherOperation
  attr_reader :other_operation

  def print_other_operation
    loop do
      print "Do you want to perform another operation? "
      @other_operation = gets.chomp.to_s.capitalize

      if @other_operation == "Yes"
        break
      elsif @other_operation == "No"
        @other_operation = "No"
        break
      else
        puts "Enter: Yes/No"
        puts "===================================================="
      end
    end
  end
end
