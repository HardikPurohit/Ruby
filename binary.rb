class Binary
  def self.to_decimal(binary_num)
    if binary_num =~ /[2-9A-Za-z]/
      raise ArgumentError
    else
      binary_array = binary_num.split('')
      result = 0
      binary_array.reverse!
      binary_array.each_with_index{|val, index| result += val.to_i * (2 ** index)}
      result
    end
  end
end
module BookKeeping
  VERSION = 3
end
