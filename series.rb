class Series
  def initialize(series)
    @series = series
  end
  def slices(slices_length)
    raise ArgumentError if slices_length > @series.length
    result_array = []
    (0..(@series.length - slices_length)).each do |i|
      result_array << @series[i..(i + (slices_length - 1))]
    end
    result_array
  end
end
