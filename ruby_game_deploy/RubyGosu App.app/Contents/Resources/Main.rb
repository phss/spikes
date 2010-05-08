require 'rubygems'
require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Gosu Tutorial Game"
    @font = Gosu::Font.new(self, "Arial", 20)
    @image = Gosu::Image.load_tiles(self, "tcheco.png", 48, 62, false)[0]
 end

  def update
  end

  def draw
    draw_line(20, 20, Gosu::white, 40, 60, Gosu::white);	  
    @font.draw("I think Gosu is working!", 20, 200, 0)
    @image.draw(300, 200, 0)
  end
end

window = GameWindow.new
window.show
