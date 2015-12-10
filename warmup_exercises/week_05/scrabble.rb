#  {
#     "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1,
#     "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
#     "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1,
#     "p" => 3, "q" => 10, "r" => 1, "s" =>1, "t" => 1,
#     "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, 
#     "z" => 10
# }

# need to iterate throught each letter in a word and calculate it's values


class Scrabble

  # initialize method is a first default method that is executed when you create a new instance of the class. 
  def initialize(word)
    @word = word.downcase
    calculate_score()
  end

  def calculate_score()
    sum = 0

    @word.chars.each do |char|
      sum += letter_score[char]
    end

    puts "For word #{@word} the score will be #{sum}"
  end

  # private keeps all methods after the word 'private' as a private ones and non accesible from outside the class.
  private

  def letter_score
    {
      "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1,
      "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
      "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1,
      "p" => 3, "q" => 10, "r" => 1, "s" =>1, "t" => 1,
      "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, 
      "z" => 10
    }
  end

end

cabbage = Scrabble.new("cabbage")
hello = Scrabble.new("hello")



