class OtraOperacion
  attr_reader :realizar_otra_operacion

  def imprimir
    loop do
      print "Quiere realizar otra operación? "
      @realizar_otra_operacion = gets.chomp.to_s.capitalize

      if @realizar_otra_operacion == "Si"
        break
      elsif @realizar_otra_operacion== "No"
        @realizar_otra_operacion = "No"
        break
      else
        puts "Ingrese Si/No"
        puts "===================================================="
      end
    end
  end
end
