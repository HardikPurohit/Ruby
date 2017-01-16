class Array
  def accumulate
    result = []
    each_with_object([]) do |element, acc|
      acc.push(yield(element))
      result = acc
    end
     return result
  end
end

module BookKeeping
  VERSION = 1
end
