class ETL
  def ETL.transform(old)
    result_hash = Hash.new
    old.each do |val, old_index|
      old_index.each do |array_val|
        result_hash[array_val.downcase] = val
      end
    end
    result_hash
  end
end
