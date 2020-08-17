class Menus
  attr_reader :unidad, :operacion

  def opciones
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                     Opciones                     |"
    puts "|==================================================|"
    puts "|Operar con:                                       |"
    puts "|      1) Enteros                                  |"
    puts "|      2) Flotantes                                |"
    puts "|                                                  |"
    puts "|Otras opciones:                                   |"
    puts "|      3) Historial                                |"
    puts "|      4) Salir                                    |"
    puts "===================================================="
    print "Ingrese el numero de la opción: "; @unidad = gets.chomp.to_i
  end

  def enteros
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                     Enteros                      |"
    puts "|==================================================|"
    puts "|Operaciones:                                      |"
    puts "|      1) Suma                                     |"
    puts "|      2) Resta                                    |"
    puts "|      3) Multiplicación                           |"
    puts "|      4) División                                 |"
    puts "|                                                  |"
    puts "|Otras opciones:                                   |"
    puts "|      5) Atrás                                    |"
    puts "===================================================="
    print "Ingrese el numero de la opción: "; @operacion = gets.chomp.to_i
    puts "===================================================="
  end

  def flotantes
    print "\e[2J\e[f"
      puts "===================================================="
      puts "|                     Flotantes                    |"
      puts "|==================================================|"
      puts "|Operaciones:                                      |"
      puts "|      1) Suma                                     |"
      puts "|      2) Resta                                    |"
      puts "|      3) Multiplicación                           |"
      puts "|      4) División                                 |"
      puts "|                                                  |"
      puts "|Otras opciones:                                   |"
      puts "|      5) Atrás                                    |"
      puts "===================================================="
      print "Ingrese el numero de la opción: "; @operacion = gets.chomp.to_i
      puts "===================================================="
  end

  def saludo
    puts "===================================================="
    puts "                  Hasta luego!!!                    "
    puts "===================================================="
  end

  def historial(historial)
    print "\e[2J\e[f"
    puts "===================================================="
    puts "|                   Historial                      |"
    puts "===================================================="

    historial.each do |n|
      puts " " + n       
    end

    puts "===================================================="
  end

  def historial_vacio
    print "\e[2J\e[f"
    puts "===================================================="
    puts "Su historial está vacío"
    puts "===================================================="
  end
end
