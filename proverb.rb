class Proverb
  # $qunt=Hash.new
  def initialize(*words, qu)
    @phrase = words
    $qunt = qu
  end

  def to_s
    expected = Array.new
    final_result = ""
    @rhyme = ["For want of a nail the shoe was lost.\n",
      "For want of a shoe the horse was lost.\n",
      "For want of a horse the rider was lost.\n",
      "For want of a rider the message was lost.\n",
      "For want of a message the battle was lost.\n",
      "For want of a battle the kingdom was lost.\n"]

    if @phrase[0] != "nail"
      @rhyme.each do |s|
        s.gsub!("nail","key")
        s.gsub!("shoe","value")
      end
    end
    flg_no_repeat = -1
    (0..@phrase.length - 1).each do |i|
      (0..@rhyme.length - 1).each do |j|
        if @rhyme[j].include? @phrase[i]
          expected << @rhyme[j]
        end
      end
    end
    if $qunt.class == Hash
      expected << "And all for the want of a #{$qunt.values[0]} nail."
    else
      expected << "And all for the want of a #{@phrase[0]}."
    end
    expected = expected.uniq
    expected.each do |i|
      final_result += i
    end
    return final_result
  end
end
