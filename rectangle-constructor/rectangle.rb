class Rectangle
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end
end

class Rectangle
  attr_reader :width, :height

  def initialize(width, height = nil)
    @width = width
    if height.nil?
      @height = width
    else
      @height = height
    end
  end

end

class Rectangle
  attr_reader :width, :height

  def initialize(width, height = nil)
    @width = width
    if height.nil?
      @height = width
    else
      @height = height
    end
  end

  def area
    @area = width * height
  end
end
