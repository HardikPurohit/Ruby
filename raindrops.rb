class Raindrops
  def self.convert(no)
    str = ""
    count = no
    (1..count).each do |i|
      if(no % i == 0)
        no = no / i
        str += i.to_s + " "
      end
    end
    final = Raindrops.result(str)
    if final == ""
      puts count.to_s
      return count.to_s
    else
      puts final
      return final
    end
  end

  def self.result(str_called)
    output = ""
    arr = str_called.split(' ');
    (0..arr.length-1).each do |i|
      case arr[i]
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
module BookKeeping
  VERSION = 3
end
