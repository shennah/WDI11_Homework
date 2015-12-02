
class WordProblem
  def initialize(question)
    @question = question
  end

  def answer
    # 1 regular expression to rule them all:
    #
    #     /What is \d+( plus \d+)+/         # roughly speaking
    #
    # That's the idea, but...
    #
    #     /What is ((\d+) plus (\d+))+\?/   # it starts to get really hard to read...
    #
    # Seems... difficult. :(
    # 
    # Alternative: Bite bits off the string, in a loop:
    #
    # "What is 5 plus 3 plus 1?"
    # "What is "
    #         "5"                   # start with a working result
    #          " plus 3"            # } loop over these and update result
    #                 " plus 1"     # }
    #                        "?"    # we're done! return result

    question_left_over = @question.dup
    match_data = question_left_over.match(/^What is (-?\d+)/)

    if match_data == nil
      raise ArgumentError, "Not a valid question"
    end

    result = match_data[1].to_i
    question_left_over.sub!(match_data[0], '')
    question_left_over.sub!(/\?$/, '')

    while match_data = question_left_over.match(/^ (plus|minus|multiplied by|divided by|raised to the) (-?\d+)(\w\w power)?/)
      # 1) update result
      # 2) throw away matched part of string

      op, operand = match_data[1], match_data[2].to_i
      result = calculate(result, op, operand)
      question_left_over.sub!(match_data[0], '')
    end

    if question_left_over.length > 0
      raise ArgumentError, "Parts of the question didn't match"
    end

    return result
  end

  private

  def calculate(result, op, operand)
    case op
    when 'plus'
      result = result + operand
    when 'minus'
      result = result - operand
    when 'multiplied by'
      result = result * operand
    when 'divided by'
      result = result / operand
    when 'raised to the'
      result = result ** operand
    end
    return result
  end

end