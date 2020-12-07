class Calculate
  attr_reader :result
  
  def initialize(a, b)
    @a = a
    @b = b
  end

  def add
    @result = @a + @b
  end
  
  def subtract
    @result = @a - @b
  end

  def multiplicate
    @result = @a * @b
  end

  def division
    @result = @a / @b
  end
end
