class Pangram

  private

  def self.pangram?(phrase)
    rest_letter =  ('a'..'z').to_a - phrase.downcase.chars.to_a
    if rest_letter.length == 0
      return "#{phrase.inspect} IS a pangram"
    else
      puts "#{phrase.inspect} is NOT a pangram"
    end
  end
end

module BookKeeping
  VERSION = 3
end
