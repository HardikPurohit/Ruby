class BeerSong
  def verse(num)
    if num == 1
      return "#{num} bottle of beer on the wall, #{num} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif num == 0
       return "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif num == 2
      return "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottle of beer on the wall.\n"
    else
      return "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
    end
  end
  def verses(start_num, end_num)
    result = ""
    (start_num.downto(end_num)).each do |i|
       if i > end_num
         result << verse(i) + "\n"
       else
         result << verse(i)
      end
    end
    result
  end
  def lyrics
    verses(99,0)
  end
end
# p BeerSong.new.verses(99, 97)
module BookKeeping
  VERSION = 2
end
