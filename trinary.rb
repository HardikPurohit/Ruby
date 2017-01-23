class Trinary
  def initialize(num)
    @number = num.to_i
  end
  def to_decimal
    result = 0
    count = 0
    temp_loop = @number
    while temp_loop > 0
      digit_chunk = temp_loop % 10
      if digit_chunk < 4
        result += digit_chunk * (3 ** count)
      end
      count += 1
      temp_loop = temp_loop / 10
    end
    result
  end
end
module BookKeeping
  VERSION = 1
end
