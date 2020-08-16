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
    puts "===================================================="
    print "Ingrese el numero de la opción: "; @unidad = gets.chomp.to_i
    puts "===================================================="
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
      puts "===================================================="
      print "Ingrese el numero de la opción: "; @operacion = gets.chomp.to_i
      puts "===================================================="
  end

  def saludo
    puts "===================================================="
    puts "                  Hasta luego!!!                    "
    puts "===================================================="
  end
end
