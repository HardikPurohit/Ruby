class Acronym
  def self.abbreviate(long_phrase)
    result = ""
    if long_phrase =~ /:/
      long_phrase = long_phrase.split(/:/)
      result = long_phrase[0]
    else
      long_phrase = long_phrase.split("")
      long_phrase.each_with_index do |val, index|
        result << val if val=~ /[A-Z]/
        if (val == " " || val == "-") && !(long_phrase[index + 1] =~ /[A-Z]/)
          result << long_phrase[index + 1]
        end
      end
    end
    result.upcase
  end
end
module BookKeeping
  VERSION = 2
end
