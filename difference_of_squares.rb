class Squares
  @@num = 0

  private

  def initialize(*num)
    if num.length != 0
      @@num = num[0]
    end
  end

  def square_of_sum
    square_sum = 0
    (1..@@num).each do |i|
      square_sum += i
    end
    return square_sum ** 2
  end

  def sum_of_squares
    sum_square = 0
    (1..@@num).each do |i|
      sum_square += i ** 2
    end
    return sum_square
  end

  def difference
    return Squares.new().square_of_sum - Squares.new().sum_of_squares
  end
end
module BookKeeping
  VERSION = 3
end
