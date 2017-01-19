class Translation
  def self.of_rna(codon)
    Translation.of_codon(codon)
  end
  def self.of_codon(codon)
    @@result = []
    if codon.class == String
      @codon_array = codon.split("")
      @codon_string=""
      char = 0
      @codon_array.each do |i|
        if char != 3
          @codon_string += i
          char += 1
        end
        if char == 3
          return_proteins = self.new.proteins(@codon_string)
          raise InvalidCodonError if return_proteins == "invalid"
          if @@result == []
            @@result << return_proteins
          elsif return_proteins == "STOP"
            break
          else
            @@result << return_proteins
          end
          @codon_string = ""
          char = 0
        end
      end
    else
      codon.each do |i|
        return_proteins = self.new.proteins(i)
        raise InvalidCodonError if return_proteins == "invalid"
        if @@result == []
          @@result << return_proteins
        elsif return_proteins == "STOP"
          break
        else
          @@result << return_proteins
        end
        @codon_string = ""
        char = 0
      end
    end
      if @@result.uniq.length == 1
        return @@result[0]
      else
        return @@result
      end
  end
  def proteins(codon)
    case codon
    when "AUG" then return "Methionine"
    when "UUU", "UUC" then return "Phenylalanine"
    when "UUA", "UUG" then return "Leucine"
    when "UCU", "UCC", "UCA", "UCG" then return "Serine"
    when "UAU", "UAC" then return "Tyrosine"
    when "UGU", "UGC" then return "Cysteine"
    when "UGG" then return "Tryptophan"
    when "UAA", "UAG", "UGA" then return "STOP"
    else
      return "invalid"
    end
  end
end
InvalidCodonError = Class.new(StandardError)
