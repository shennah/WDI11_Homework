class Calculator

  def ask(question)
    # match returns us all parts of the string that are matching the pattern we are checking on, and matches[0] will return all matched expression, further elements will be those that are changing: 1st number, 2nd number, in our case.
    matches = question.match(/What is (-?\d+) plus (-?\d+)\?/)
    matches[1].to_i + matches[2].to_i
  end
  
end
