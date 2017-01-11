class Hamming
  def self.compute(first_dna,second_dna)
     @@first=first_dna
     @@second=second_dna
     @count=0;
     if @@first.to_s.length == @@second.to_s.length
       @first=@@first.split("")
       @second=@@second.split("")
       (0..@first.length).each do |i|
         if @first[i] != @second[i]
            @count += 1;
          end
        end
        return @count
      else
       raise ArgumentError
     end
  end
end
module BookKeeping
 VERSION=3
end
