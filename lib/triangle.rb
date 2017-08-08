class TriangleError < StandardError
   def message
     puts "One of your sides is to short to form a triangle."
   end
end

class Triangle
  attr_accessor :len1, :len2, :len3

    def initialize(len1, len2, len3)
      @len1 = len1
      @len2 = len2
      @len3 = len3
    end

    def kind
      if @len1 <= 0 || @len2 <= 0 || @len3 <= 0 || @len1 + @len2 <= @len3 || @len1 + @len3 <= @len2 || @len2 + @len3 <= @len1
        raise TriangleError
      else
        if @len1 == @len2 && @len1 == @len3
          :equilateral
        elsif @len1 == @len2 || @len1 == @len3 || @len2 == @len3
          :isosceles
        else
          :scalene
        end
      end
    end
end
