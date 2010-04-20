SKIN_COLOR = Gosu::Color.new(255, 249, 202, 194)

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

class Eyes
end

class Mouth
end

class Nose
end

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
