# 1. grain = Grain.new
# 2. puts grain.calc_grains(3)
#     #=> 4
# 3. puts grain.calc_total
#     #=> 18446744073709551615


class Grain
  def calc_grains(cell_num)
    2**(cell_num - 1)
  end

  def calc_total
    board = (1..64).to_a
    sum = 0
    board.map {|cell| sum += calc_grains(cell)}
    sum
  end
end


grain = Grain.new
puts grain.calc_grains(3)
puts grain.calc_grains(6)

puts grain.calc_total