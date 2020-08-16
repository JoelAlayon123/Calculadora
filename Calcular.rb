class Calcular
  attr_reader :resultado
  
  def initialize(a, b)
    @a = a
    @b = b
  end

  def sumar
    @resultado = @a + @b
  end
  
  def restar
    @resultado = @a - @b
  end

  def multiplicar
    @resultado = @a * @b
  end

  def dividir
    @resultado = @a / @b
  end
end
