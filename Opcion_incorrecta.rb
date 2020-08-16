class OpcionIncorrecta
  attr_reader :intentar_otra_vez

  def imprimir
    print "\e[2J\e[f"
    puts "===================================================="
    puts "Usted ingresó una opción no válida"
    
    loop do
      puts "===================================================="
      print "Quiere volver a intentar? "
      @intentar_otra_vez = gets.chomp.to_s.capitalize

      if @intentar_otra_vez == "Si"
        break
      elsif @intentar_otra_vez == "No"
        break
      else
        puts "Ingrese Si/No"
      end
    end
  end
end
