class Diamond
  def make_diamond(char)
    # p (char.ord)
    (65..char.ord).each do |i|
      (i..char.ord).each do |k|
        print " "
      end
      (65..i).each do |j|
        if j == i || j == 65
          print i.chr + " "
        else
          print "  "
        end
      end
      puts ""
    end
    ((char.ord - 1 ).downto(65)).each do |i|
      (i..(char.ord  )).each do |k|
        print " "
      end
      (65..i).each do |j|
        if j == i || j == 65
          print i.chr + " "
        else
          print "  "
        end
      end
      puts ""
    end
  end
end
d = Diamond.new
d.make_diamond('E')
