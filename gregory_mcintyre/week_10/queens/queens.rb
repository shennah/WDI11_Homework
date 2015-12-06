# Queen Attack

# In the game of chess, a queen can attack pieces which are on the same row,
# column, or diagonal.

# A chessboard can be represented by an 8 by 8 array.

# So if you're told the white queen is at (2, 3) and the black queen at (5, 6),
# then you'd know you've got a set-up like so:

# ```plain
# O O O O O O O O
# O O O O O O O O
# O O O W O O O O
# O O O O O O O O
# O O O O O O O O
# O O O O O O B O
# O O O O O O O O
# O O O O O O O O
# ```

# You'd also be able to answer whether the queens can attack each other.
# In this case, that answer would be yes, they can,
# because both pieces share a diagonal.
#
class Queens
  attr_reader :white, :black

  def initialize(white: [0, 3], black: [7, 3])
    white == black && fail(ArgumentError, 'Occupying the same space')
    @white = white
    @black = black
  end

  def to_s
    board_s
  end

  def attack?
    rank_attack? || file_attack? || diagonal_attack?
  end

  private

  def rank_attack?
    rank(white) == rank(black)
  end

  def file_attack?
    file(white) == file(black)
  end

  def diagonal_attack?
    diagonal_positions(white).include?(black)
  end

  def board_s
    8.times.map { |rank| rank_s(rank) }.join("\n")
  end

  def rank_s(rank)
    8.times.map { |file| letter(pos(rank, file)) }.join(' ')
  end

  def pos(rank, file)
    [rank, file]
  end

  def rank(pos)
    pos[0]
  end

  def file(pos)
    pos[1]
  end

  DIAGONAL_OFFSETS = [
    [-1, -1],
    [-1,  1],
    [1, -1],
    [1,  1]
  ]

  def diagonal_positions(pos)
    result = []
    DIAGONAL_OFFSETS.each do |i, j|
      (1..7).each do |n|
        result.push pos_offset(pos, i * n, j * n)
      end
    end
    result
  end

  def pos_offset(pos, dx, dy)
    pos(rank(pos) + dx, file(pos) + dy)
  end

  def letter(pos)
    case pos
    when white then 'W'
    when black then 'B'
    else 'O'
    end
  end
end
