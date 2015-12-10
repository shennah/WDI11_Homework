class Queens

  attr_reader :white, :black
  # another way to work with attributes, older version
  # def initialize(positions = {})
  #   @white = positions.fetch(:white){[0, 3]}
  #   @black = positions.fetch(:black){[7, 3]}

  #   if (@white == @black)
  #     raise ArgumentError
  #   end
  # end

  def initialize(white: [0, 3], black: [7, 3])
    @white = white
    @black = black
    if (@white == @black)
      raise ArgumentError
    end
  end

  def to_s
    board = []
    (0..7).each do |row|
      coordinates = []
      (0..7).each do |column|
          coordinates << draw_board(row, column)
      end
      board[row] = coordinates.join(" ")
    end
    board = board.join("\n")
  end

  def attack?
    is_horizontal? || is_vertical? || is_diagonal? || is_diagonal2?
  end

  private
  def is_horizontal?
    @white[0] == @black[0]
  end

  def is_vertical?
    @white[1] == @black[1]
  end

  def is_diagonal?
    white_diff == black_diff
  end

  def white_diff
    @white[1] - @white[0]
  end

  def black_diff
    @black[1] - @black[0]
  end

  def is_diagonal2?
    (@white[0] + @white[1]) == (@black[0] + @black[1])
  end

  def draw_board(row, column)
    if (@white == [row, column])
        "W"
    elsif (@black == [row, column])
        "B"
    else
        "O"
    end
  end

end





























































# class Queens

#   attr_reader :white, :black
#   def initialize(positions = {})
#     @white = positions.fetch(:white){[0, 3]}
#     @black = positions.fetch(:black){[7, 3]}
#     if white == black
#       raise ArgumentError
#     end
#   end

#   def to_s
#     board = []
#     (0..7).each do |row|
#       positions = []
#       (0..7).each do |column|
#         positions << draw(row, column)
#       end
#       board[row] = positions.join(" ")
#     end
#     board.join("\n")
#   end

#   def attack?
#     is_horizontal? || is_vertical? || is_diagonal?
#   end

#   private
#   def is_horizontal?
#     @white[0] == @black[0]
#   end

#   def is_vertical?
#     @white[1] == @black[1]
#   end

#   def is_diagonal?
#     (@white[1] - @white[0]) == (@black[1] - @black[0])
#   end

#   def draw(row, column)
#     case[row, column]
#     when @white then "W"
#     when @black then "B"
#     else "O"
#     end
#   end

# end