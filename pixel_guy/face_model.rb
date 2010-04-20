SKIN_COLOR = Gosu::Color.new(255, 249, 202, 194)

# Head attributes to consider:
# - Width
# - Height
# - Color
# - Shape? 
class Head

  def initialize(size=5)
    @size = size
    @ratios = [4, 6, 8, 8, 8, 8, 8, 8, 8, 8, 8, 6, 2, 2]
  end

  def draw(window, x, y)
    @ratios.each_with_index do |ratio, i|
      ratio.times do |j| 
        x_pos = j*@size + (@ratios.max-ratio)/2*@size
        y_pos = i*@size
        MetaBlock.new(@size).draw(window, x+x_pos, y+y_pos)
      end
    end
  end
end

# Eye attributes:
# - Width
# - Height
# - Spacing between
# - Vertical placement
# - Color
# - Shape?
class Eyes
end

# Mouth attributes:
# - Width
# - Height
# - Vertical placement
# - Color?
# - Shape?
class Mouth
end

# Is it needed?
class Nose
end

# Hair attributes:
# - Style/shape
# - Color
class Hair
end


class MetaBlock
  def initialize(dimension)
    @dimension = dimension
  end

  def draw(window, x, y)
    window.draw_quad(x, y, SKIN_COLOR, x + @dimension, y, SKIN_COLOR, x + @dimension, y + @dimension, SKIN_COLOR, x, y + @dimension, SKIN_COLOR)
  end
end
