class Phrase

  def initialize(phrase)
    @phrase_to_count=phrase

  end

  def word_count
    @phrase_array = @phrase_to_count.scan(/\w+(?:'\w+)*/)
    @new_phrase = @phrase_array.join(" ")
    @new_phrase.gsub!',',' '
    @new_phrase.gsub!':',' '
    @new_phrase.gsub!(/[!@.%&$^"]/,'')
    @new_phrase.downcase!
    array_of_phrase=@new_phrase.split(" ")
    phrase = Hash.new
    count_occurrence = 1
    (0..array_of_phrase.length-1).each do |i|
      next if phrase.key?(array_of_phrase[i])
      (i+1..array_of_phrase.length-1).each do |j|
        count_occurrence += 1 if array_of_phrase[i] == array_of_phrase[j]
      end
      phrase[array_of_phrase[i]] = count_occurrence
      count_occurrence = 1
    end
    return phrase
  end

end

module BookKeeping
  VERSION = 1
end

