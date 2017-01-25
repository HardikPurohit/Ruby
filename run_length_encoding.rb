class RunLengthEncoding
  def self.encode(input)
    input_array = input.split('')
    result = ""
    occurrence = 1
    input_array.each_with_index do |val, index|
      if input_array[index] == input_array[index + 1]
        occurrence += 1
      else
        result += (occurrence == 1 ? "" : occurrence.to_s) + input_array[index].to_s
        occurrence = 1
      end
    end
    result
  end
  def self.decode(input)
   input.split("")
   occurrence = ""
   output = ""
   (0..(input.length - 1)).each do |chr|
     if (1..10).cover? input[chr].to_i
       occurrence += input[chr]
     else
       if occurrence == ""
         output += input[chr]
       else
         (0..((occurrence.to_i) - 1)).each { output += input[chr] }
         occurrence = ""
       end
     end
   end
   output
  end
end
module BookKeeping
  VERSION = 2
end
