class Phrase
  def initialize(phrase)
    @phrase_to_count = phrase
  end
  def word_count
    @phrase_array = @phrase_to_count.scan(/\w+(?:'\w+)*/)
    @new_phrase = @phrase_array.join(" ")
    @new_phrase.gsub!',',' '
    @new_phrase.gsub!':',' '
    @new_phrase.gsub!(/[!@.%&$^"]/,'')
    @new_phrase.downcase!
    array_of_phrase = @new_phrase.split(" ")
    phrase = Hash.new
    count_occurrence = 1
    array_of_phrase.each_with_index do  |val, index|
      next if phrase.key?(val)
      (index + 1..array_of_phrase.length-1).each do |j|
        count_occurrence += 1 if val == array_of_phrase[j]
      end
      phrase[val] = count_occurrence
      count_occurrence = 1
    end
    phrase
  end
end
module BookKeeping
  VERSION = 1
end
