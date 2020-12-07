require_relative "Wrong_option.rb"
require_relative "Other_Operation"
require_relative "Menus.rb"
require_relative "Interfaces.rb"

@history = []

menus = Menus.new()
numbers_interface = NumbersInterface.new()
other_operation = OtherOperation.new()
wrong_option = WrongOption.new()

loop do
  menus.options
  unit = menus.unit

  case unit
  when 1
    loop do
      menus.operations
      operation = menus.operation

      case operation
      when 1
        numbers_interface.add
        other_operation.print_other_operation
        @other_operation = other_operation.other_operation
        @history.push(numbers_interface.results_history)

        break if @other_operation == "No"
      when 2  
        numbers_interface.subtract
        other_operation.print_other_operation
        @other_operation = other_operation.other_operation
        @history.push(numbers_interface.results_history)

        break if @other_operation == "No"
      when 3
        numbers_interface.multiplicate
        other_operation.print_other_operation
        @other_operation = other_operation.other_operation
        @history.push(numbers_interface.results_history)

        break if @other_operation == "No"
      when 4
        numbers_interface.division
        other_operation.print_other_operation
        @other_operation = other_operation.other_operation
        @history.push(numbers_interface.results_history)

        break if @other_operation == "No"
      when 5
        break
      else
        wrong_option.print_wrong_option
        @try_again = wrong_option.try_again

        break if @try_again == "No"
      end
      break
    end
    break if @other_operation == "No"
    break if @try_again == "No"
  when 2
    if @history.count == 0
      menus.empty_history
      other_operation.print_other_operation
      @other_operation = other_operation.other_operation
      
      break if @other_operation== "No"
    else
      menus.history(@history)
      other_operation.print_other_operation
      @other_operation = other_operation.other_operation
      
      break if @other_operation== "No"
    end
  when 3
    break
  else
    wrong_option.print_wrong_option

    break if wrong_option.try_again == "No"
  end
  break if @other_operation == "No"
end

menus.good_bye
