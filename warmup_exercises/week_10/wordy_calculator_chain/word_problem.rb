class WordProblem
  def initialize(question)
    @question = question
  end

  def answer
    # if @matches = @question.match(/What is (-?\d+) plus (-?\d+)\?/)
    #   result = @matches[1].to_i + @matches[2].to_i
    # elsif @matches = @question.match(/What is (-?\d+) minus (-?\d+)\?/)
    #   result = @matches[1].to_i - @matches[2].to_i
    # elsif @matches = @question.match(/What is (-?\d+) multiplied by (-?\d+)\?/)
    #   result = @matches[1].to_i * @matches[2].to_i
    # elsif @matches = @question.match(/What is (-?\d+) divided by (-?\d+)\?/)
    #   result = @matches[1].to_i / @matches[2].to_i
    # end

    if matches.nil?
      raise ArgumentError.new( "Sorry, please enter a valid question." )
    end

    @answer = matches[1].to_i.send(operation(2), matches[3].to_i)

    unless chain.nil?
      @answer = @answer.send( operation(5), matches[6].to_i)
    end
    @answer
  end

  private

  def matches
    @matches = @question.match(pattern)
  end

  def pattern
    /What is (-?\d+) (plus|minus|multiplied by|divided by) (-?\d+)( (plus|minus|multiplied by|divided by) (-?\d+))?\?/
  end

  def operation(num)
    case matches[num]
      when "plus" then :+
      when "minus" then :-
      when "multiplied by" then :*
      when "divided by" then :/
    end
  end

  def chain
    @matches[4]
  end

end
