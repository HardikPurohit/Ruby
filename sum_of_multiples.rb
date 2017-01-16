class SumOfMultiples

  def initialize(*num)
    @array_of_numbers = num
  end

  def to(multiple_limit)
    @result_array = []
    sum_of_multiples=0
    (0..@array_of_numbers.length-1).each do |i|
      if multiple_limit > @array_of_numbers[i]
        j = 1
        while (@array_of_numbers[i] * j) < multiple_limit
          a = @array_of_numbers[i] * j
          @result_array.push(a) if !@result_array.include?(a)
          j += 1
        end
      else
        sum_of_multiples = 0
      end
    end
    (0..@result_array.length-1).each do |i|
      sum_of_multiples += @result_array[i]
    end
    return sum_of_multiples
  end
end
