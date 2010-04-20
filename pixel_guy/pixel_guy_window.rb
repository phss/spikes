require 'rubygems'
require 'gosu'
require 'face_model'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480, false)
		self.caption = "Pixel Guy!!!"

    @head = Head.new(20)
  end
    
	def update
	end

	def draw
    @head.draw(self, 20, 20)
	end
end

window = GameWindow.new
window.show
