require_relative "Opcion_incorrecta.rb"
require_relative "Otra_operacion.rb"
require_relative "Menus.rb"
require_relative "Interfaces.rb"
 
menus = Menus.new()
interfaz_enteros = InterfazEnteros.new()
interfaz_flotantes = InterfazFlotantes.new()
otra_operacion = OtraOperacion.new()
opcion_incorrecta = OpcionIncorrecta.new()

loop do
  menus.opciones
  unidad = menus.unidad

  case unidad
  when 1
    loop do
      menus.enteros
      operacion = menus.operacion

      case operacion
      when 1
        interfaz_enteros.suma_enteros
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      when 2  
        interfaz_enteros.resta_enteros
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      when 3
        interfaz_enteros.multiplicacion_enteros
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      when 4
        interfaz_enteros.division_enteros
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      else
        opcion_incorrecta.imprimir
        @intentar_otra_vez = opcion_incorrecta.intentar_otra_vez

        break if @intentar_otra_vez == "No"
      end
      break
    end
    break if @realizar_otra_operacion == "No"
    break if @intentar_otra_vez == "No"
  when 2
    loop do
      menus.flotantes
      operacion = menus.operacion

      case operacion
      when 1
        interfaz_flotantes.suma_flotantes
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      when 2
        interfaz_flotantes.resta_flotantes
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      when 3
        interfaz_flotantes.multiplicacion_flotantes
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      when 4
        interfaz_flotantes.division_flotantes
        otra_operacion.imprimir
        @realizar_otra_operacion = otra_operacion.realizar_otra_operacion

        break if @realizar_otra_operacion == "No"
      else
        opcion_incorrecta.imprimir
        @intentar_otra_vez = opcion_incorrecta.intentar_otra_vez

        break if @intentar_otra_vez == "No"
      end
      break
    end
    break if @realizar_otra_operacion == "No"
    break if @intentar_otra_vez == "No"
  else
    opcion_incorrecta.imprimir

    break if opcion_incorrecta.intentar_otra_vez == "No"
  end
end

menus.saludo
