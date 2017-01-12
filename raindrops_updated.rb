class Raindrops
  def self.convert(num)
    factors = ""
    count = num
    (1..count).each do |i|
      if(num % i == 0)
        num = num / i
        factors += i.to_s + " "
      end
    end
    final_output = Raindrops.result(factors)
    if final_output == ""
      return count.to_s
    else
      return final_output
    end
  end

  def self.result(factors_called)
    output = ""
    factors_called = factors_called.split(' ');
    (0..factors_called.length-1).each do |i|
      case factors_called[i]
        when '3'
          output += 'Pling'
          next
        when '5'
          output += 'Plang'
          next
        when '7'
          output += 'Plong'
          next
      end
    end
    return output
  end
end
#Raindrops.convert(25)
module BookKeeping
  VERSION = 3
end
