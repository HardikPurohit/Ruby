class Isogram
  def self.is_isogram?(string)
    string.gsub!(/[ \-]/,'')
    string_array = string.downcase.split('')
    uniq_array = string_array.uniq
    if string_array.length == uniq_array.length
      true
    else
      false
    end
  end
end
module BookKeeping
  VERSION = 2
end
