class Fixnum
  def to_roman
    int_to_roman = {
      "M":1000,
      "CM":900,
      "D":500,
      "CD":400,
      "C":100,
      "XC":90,
      "L":50,
      "XL":40,
      "X":10,
      "IX":9,
      "V":5,
      "IV":4,
      "I":1
    }
    number = self
    roman_letter = ""
    int_to_roman.each do |roman, value|
      roman_letter += roman.to_s * (number / value)
      number = number % value
    end
    roman_letter
  end
end
module BookKeeping
  VERSION = 2
end
