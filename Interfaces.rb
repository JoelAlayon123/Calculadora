require_relative "Calcular.rb"

class InterfazEnteros
  attr_reader :historial_resultado

  def suma_enteros
    puts "Usted seleccionó la operación 'Suma'"
    print "Ingrese el primer numero a sumar: "; a = gets.chomp.to_i
    print "Ingrese el segundo numero a sumar: ";  b = gets.chomp.to_i

    calcular = Calcular.new(a, b)
    calcular.sumar

    puts "La suma de #{a} + #{b} = #{calcular.resultado}"
    puts "===================================================="
    
    @historial_resultado = ("#{a} + #{b} = #{calcular.resultado}")
  end

  def resta_enteros
    puts "Usted seleccionó la operación 'Resta'"
    print "Ingrese el primer numero: "; a = gets.chomp.to_i
    print "Ingrese el segundo numero: ";  b = gets.chomp.to_i

    calcular = Calcular.new(a, b)
    calcular.restar

    puts "La resta de #{a} - #{b} = #{calcular.resultado}"
    puts "===================================================="
        
    @historial_resultado = ("#{a} - #{b} = #{calcular.resultado}")
  end

  def multiplicacion_enteros
    puts "Usted seleccionó la operación 'Multiplicación'"
    print "Ingrese el primer numero: "; a = gets.chomp.to_i
    print "Ingrese el segundo numero: ";  b = gets.chomp.to_i

    calcular = Calcular.new(a, b)
    calcular.multiplicar

    puts "La multiplicación de #{a} * #{b} = #{calcular.resultado}"
    puts "===================================================="

    @historial_resultado = ("#{a} * #{b} = #{calcular.resultado}")
  end

  def division_enteros
    puts "Usted seleccionó la operación 'División'"
    print "Ingrese el primer numero: "; a = gets.chomp.to_i
    print "Ingrese el segundo numero: ";  b = gets.chomp.to_i

    calcular = Calcular.new(a, b)
    calcular.dividir
  
    puts "La división de #{a} / #{b} = #{calcular.resultado}"
    puts "===================================================="
        
    @historial_resultado = ("#{a} / #{b} = #{calcular.resultado}")
  end
end

class InterfazFlotantes
  attr_reader :historial_resultado

  def suma_flotantes
    puts "Usted seleccionó la operación 'Suma'"
    print "Ingrese el primer numero a sumar: "; a = gets.chomp.to_f
    print "Ingrese el segundo numero a sumar: ";  b = gets.chomp.to_f

    calcular = Calcular.new(a, b)
    calcular.sumar

    puts "La suma de #{a} + #{b} = #{calcular.resultado}"
    puts "===================================================="

    @historial_resultado = ("#{a} + #{b} = #{calcular.resultado}")
  end

  def resta_flotantes
    puts "Usted seleccionó la operación 'Resta'"
    print "Ingrese el primer numero: "; a = gets.chomp.to_f
    print "Ingrese el segundo numero: ";  b = gets.chomp.to_f

    calcular = Calcular.new(a, b)
    calcular.restar
    
    puts "La resta de #{a} - #{b} = #{calcular.resultado}"
    puts "===================================================="

    @historial_resultado = ("#{a} - #{b} = #{calcular.resultado}")
  end

  def multiplicacion_flotantes
    puts "Usted seleccionó la operación 'Multiplicación'"
    print "Ingrese el primer numero: "; a = gets.chomp.to_f
    print "Ingrese el segundo numero: ";  b = gets.chomp.to_f

    calcular = Calcular.new(a, b)
    calcular.multiplicar
    
    puts "La multiplicación de #{a} * #{b} = #{calcular.resultado}"
    puts "===================================================="

    @historial_resultado = ("#{a} * #{b} = #{calcular.resultado}")
  end

  def division_flotantes
    puts "Usted seleccionó la operación 'División'"
    print "Ingrese el primer numero: "; a = gets.chomp.to_f
    print "Ingrese el segundo numero: ";  b = gets.chomp.to_f

    calcular = Calcular.new(a, b)
    calcular.dividir
    
    puts "La división de #{a} / #{b} = #{calcular.resultado}"
    puts "===================================================="

    @historial_resultado = ("#{a} / #{b} = #{calcular.resultado}")
  end
end
