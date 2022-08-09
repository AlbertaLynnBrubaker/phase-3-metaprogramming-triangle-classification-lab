class Triangle

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
    
  end

  def kind 
    if (@a == @b && @a == @c)
      :equilateral
    elsif (@a == @b && @a != @c || @a == @c && @a != @b || @b == @c && @b != @a)
      :isoceles
    else
      :scalene
    end

    # if @a <= 0 || @b <= 0 || @c <= 0
    #   begin
    #     raise TriangleError
    #   end
    # elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
    #   begin
    #     raise TriangleError
    #   end
    # end
  end

  class TriangleError < StandardError

  end
  
end
