class Grains
  def self.square(num)
    if num < 1 || num > 64
      raise ArgumentError
    else
      2 ** (num - 1)
    end
  end
  def self.total
    total_grains = 0
    (0..63).each do |i|
      total_grains += 2 ** i
    end
    total_grains
  end
end
module BookKeeping
  VERSION = 1
end
