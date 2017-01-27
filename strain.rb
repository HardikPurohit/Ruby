class Array
  def keep(&block)
    result = []
    array_of_boolean = self.map(&block)
    array_of_boolean.each_with_index{ |i, index| result << self[index] if i == true }
  result
  end
  def discard(&block)
    result = []
    array_of_boolean = self.map(&block)
    array_of_boolean.each_with_index{ |i, index| result << self[index] if i == false }
    result
  end
end
