class Complement
  def self.of_dna(dna)
    dna=dna.split('');
    rna=''
    (0..dna.length-1).each do |i|
      case dna[i]
        when 'A'
          rna = rna + 'U'
          next
        when 'G'
          rna = rna + 'C'
          next
        when 'C'
          rna = rna + 'G'
          next
        when 'T'
          rna = rna + 'A'
          next
        else
          rna = ''
          break
      end
    end
    return rna
  end
end

module BookKeeping
  VERSION = 4
end
