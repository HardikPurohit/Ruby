class Bob
  def self.hey(text)
    if text =~ /^[^a-z]+$/ && text =~ /[A-Z]/
      return 'Whoa, chill out!'
    elsif text[-1,1] == '?'
      return 'Sure.'
    elsif text == "" || text =~ /^[ \t]+$/
      return "Fine. Be that way!"
    else
      return "Whatever."
    end
  end
end
