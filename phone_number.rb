class PhoneNumber
  def initialize(num)
    @number = num
  end
  def number
    @number.gsub!(/[\(\)\- \.\,]/,'')
      @number = "0000000000" if @number =~ /[A-Za-z]/ || @number.length < 10 || @number.length > 11
    if @number.length > 10
      if @number =~ /^[1]/
        @number = @number[1..10]
      else
        @number = "0000000000"
      end
    end
    @number
  end
  def area_code
    @number = @number[0..2]
  end
  def to_s
    @number.gsub!(/^[1]/,'')
    @number = "(" + @number[0..2] + ") " + @number[3..5] +"-"+ @number[6..9]
  end
end
