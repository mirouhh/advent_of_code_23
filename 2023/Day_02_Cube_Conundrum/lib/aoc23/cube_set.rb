class CubeSet
  def initialize
    @cubes = {}
  end

  def empty?
    @cubes.empty?
  end

  def total
    total = 0
    @cubes.each_key do |key|
      total += @cubes[key]
    end
    total
  end

  def contains?(color)
    color = color.downcase
    @cubes.key? color
  end

  def how_many(color)
    color = color.downcase
    (@cubes.key? color) ? @cubes[color] : 0
  end

  def add_cubes(color, amount)
    color = color.downcase
    @cubes[color] = amount
  end

  def info
    info = []
    @cubes.each_key do |key|
      info << "#{@cubes[key]} #{key}"
    end
    info.join(', ')
  end

end