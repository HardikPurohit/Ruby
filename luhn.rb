class Luhn
  def initialize(num)
    @number = num
  end
  def addends
    temp_loop = @number
    @result_chunks = []
    count = 1
    while temp_loop > 0
      digit_chunk = temp_loop % 10
      if count % 2 == 0
        check_9 = digit_chunk * 2
        if check_9 > 9
          @result_chunks << (check_9 - 9)
        else
          @result_chunks << check_9
        end
      else
        @result_chunks << digit_chunk
      end
      temp_loop = temp_loop / 10
      count += 1
    end
    @result_chunks.reverse!
  end
  def checksum
    addends
    @sum_array = @result_chunks.inject(&:+)
    @sum_array
  end
  def valid?
    checksum
    if @sum_array % 10 == 0
      true
    else
      false
    end
  end
  def self.create(number)
    arr = Luhn.new(number).addends
    new_sum = 0
    number = number * 10 + (10 - Luhn.new(number * 10).checksum) % 10
    number
  end
end
