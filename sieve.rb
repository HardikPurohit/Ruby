class Sieve
  @@num = 0

  def initialize(num)
      @@num = num
  end

  def primes
    array_of_primes=Array.new
    (2..@@num).each do |i|
      flg = 0
      (2..i/2).each do |j|
        if i % j == 0
          flg = 1
          break
        end
      end
      if flg == 0
        array_of_primes.push(i)
      end
    end
    return array_of_primes
  end
end
module BookKeeping
  VERSION = 1
end
