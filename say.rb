class Say
  def initialize(num)
    @number = num
  end

  def in_english
    if @number == 0
      return "zero"
    else
      if @number < 0 || @number >= 1000000000000
        raise ArgumentError
      else
        temp = @number #temp for checking boundry
        @phrase = ""
        @array_big=Array.new
        flg1 = 0
        flg2 = 0
        if temp > 1_000_000_000
          temp_1 = temp #temp_1 for split big integer
          while temp_1 > 0
            num_1 = temp_1 % 1000
            @array_big << num_1
            temp_1 = temp_1 / 1000
          end
          big_int = 1 #big_int for getting chuncks of big integer
          @array_big.reverse_each do |i|
            get_words(i)
            if big_int == 1
              @phrase += " billion "
            elsif big_int == 2
              @phrase += " million "
            elsif big_int == 3
              @phrase += " thousand "
            end
            big_int += 1
          end
        else
          get_words(temp)
        end
        @phrase.gsub!'  ',' '
         return @phrase.strip
      end
    end
  end
  def get_words(temp)
    if temp / 1000000000 > 0
      flg1 = 1
      digit = temp / 1000000000
      one_digit(digit)
      @phrase += " billion"
      flg2 = 1
      temp = temp - (digit * 1000000000)
    end
    if temp / 1000000 > 0
      flg1 = 1
      digit = temp / 1000000
      if flg2 == 1
        @phrase += " "
        flg2 = 0
      end
      one_digit(digit)
      @phrase += " million"
      flg2 = 1
      temp = temp - (digit * 1000000)
    end
    if temp / 1000 > 0
      flg1 = 1
      digit = temp / 1000
      if flg2 == 1
        @phrase += " "
        flg2 = 0
      end
      one_digit(digit)
      @phrase += " thousand"
      flg2 = 1
      temp = temp - (digit * 1000)
    end
    if temp / 100 > 0
      flg1 = 1
      digit = temp / 100
      if flg2 == 1
        @phrase += " "
        flg2 = 0
      end
      one_digit(digit)
      @phrase += " hundred"
      flg2 = 1
      temp = temp - (digit * 100)
    end
    if flg1 == 1
      @phrase += " "
    end
    if temp % 10 == 0 && temp != 0
      one_digit(temp)
    else
      digit = temp % 10
      if digit != 0
        temp_tenth = temp / 10
        if temp_tenth == 1
          tenth(temp)
        elsif temp_tenth == 0
          one_digit(digit)
        else
          one_digit(digit)
          digit = temp - digit
          @phrase += "-"
          one_digit(digit)
          temp_arr_1 = @phrase.split(' ').reverse
          temp_arr_2 = temp_arr_1[0].split('-').reverse
          str_temp = "#{temp_arr_2[0]}-#{temp_arr_2[1]}"
          @phrase.sub! temp_arr_1[0],str_temp
        end
      end
    end
  end

  def tenth(digit)
    case digit
    when 11 then @phrase += "eleven"
    when 12 then @phrase += "twelve"
    when 13 then @phrase += "thirteen"
    when 14 then @phrase += "fourteen"
    when 15 then @phrase += "fifteen"
    when 16 then @phrase += "sixteen"
    when 17 then @phrase += "seventeen"
    when 18 then @phrase += "eighteen"
    when 19 then @phrase += "nineteen"
    end
  end

  def one_digit(digit)
    case digit
    when 0 then @phrase += "zero"
    when 1 then @phrase += "one"
    when 2 then @phrase += "two"
    when 3 then @phrase += "three"
    when 4 then @phrase += "four"
    when 5 then @phrase += "five"
    when 6 then @phrase += "six"
    when 7 then @phrase += "seven"
    when 8 then @phrase += "eight"
    when 9 then @phrase += "nine"
    when 10 then @phrase += "ten"
    when 20 then @phrase += "twenty"
    when 30 then @phrase += "thirty"
    when 40 then @phrase += "forty"
    when 50 then @phrase += "fifty"
    when 60 then @phrase += "sixty"
    when 70 then @phrase += "seventy"
    when 80 then @phrase += "eighty"
    when 90 then @phrase += "ninety"
    end
  end

end
Say.new(987_654_321_123).in_english
