class SumOfMultiples
  def initialize(*num)
    @array_of_numbers = num
  end
  def to(multiple_limit)
    @result_array = [0]
    @array_of_numbers.each_with_index do |i|
      if multiple_limit > i
        j = 1
        while (i * j) < multiple_limit
          @result_array.push(i * j) if !@result_array.include?(i * j)
          j += 1
        end
      end
    end
      @result_array.inject(:+)
  end
end
