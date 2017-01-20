class Robot
  def initialize
    @alphabet_array = ('A'..'Z').to_a
    @robo_nm = @alphabet_array.shuffle.first + @alphabet_array.shuffle.first
    @robo_nm += Time.now.nsec.to_s[-3..-1]
  end
  def name
    @robo_nm
  end
  def reset
    initialize
  end
end
module BookKeeping
  VERSION = 2
end
