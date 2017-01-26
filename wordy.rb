class WordProblem
  def initialize(question)
    @question = question
  end
  def answer
    @question.gsub!(/\bplus\b/,'+')
    @question.gsub!(/\bminus\b/,'-')
    @question.gsub!(/\bmultiplied by\b/,'*')
    @question.gsub!(/\bdivided by\b/,'/')
    equation = @question.split(/[a-zA-Z\?]/).last
    raise ArgumentError if !(equation =~ /[\/\*\-\+]/)
    equation = equation.split(" ")
    result = 0
    equation.each_with_index do |val, index|
      if val =~ /^[\/\*\-\+]?$/
        result = eval(equation[index - 1] + val + equation[index + 1])
        equation[index + 1] =result.to_s
      end
    end
    result
  end
end
module BookKeeping
  VERSION = 1
end
