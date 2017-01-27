require 'prime'
class PrimeFactors
  def self.for(num)
    return [] if num == 1
    result = []
    num = num.prime_division
    num.each { |i| i[1].times { result << i[0] } }
    result
  end
end
