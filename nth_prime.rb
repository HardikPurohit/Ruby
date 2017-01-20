require 'prime'
class Prime
  def self.nth(num)
    if num > 0
      limit = 1
      Prime.each(104743) do |prime|
        if limit == num
          return prime
          break
        else
          limit += 1
        end
      end
    else
      raise ArgumentError
    end
  end
end
module BookKeeping
  VERSION = 1
end
