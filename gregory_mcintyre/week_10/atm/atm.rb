# This ATM is stocked with 50 and 20 dollar notes. You type in a number and
# then it delivers 50 and 20 dollar notes to you. It always gives you the
# smallest number of notes possible. If it cannot provide the number requested
# using 50 and 20 dollar notes, then it returns nil.
#
# Tips:
#
# * Run the tests with `ruby atm.rb`
# * Add more tests if you need to.
# * A *backtracking* algorithm will help satisfy the last test case.
#
# BONUS:
#
# * Make your ATM stocked with $1, $5, $15 and $28 notes.
#
# BONUS:
# * If you didn't use recursion, use it. If you did, try writing the code
#   without it.
#

require 'pp'

class ATM
  def withdraw(amount, depth: 0, notes: [50, 20])
    printf("%swithdraw(%s)\n", '  '*depth, amount)
    if amount == 0
      printf("%sYES, a solution!\n", '  '*depth)
      []
    elsif amount < 0
      printf("%sNO, dead end!\n", '  '*depth)
      nil
    else
      notes.each do |note|
        # look for a solution to a smaller problem
        printf("%s%d?\n", '  '*depth, note)
        if solution = withdraw(amount - note, depth: depth + 1, notes: notes)
          printf("%s%d!\n", '  '*depth, note)
          return [note] + solution
        end
      end
      # if we got here, there was no valid solution using any note size
      nil
    end
  end

  def withdraw_loop(amount, notes: [50, 20])
    printf("withdraw(%s)\n", amount)
    possibilities = [
      {amount: amount, notes: notes, result: []}
    ]
    while possibilities.size > 0
      pp possibilities; puts
      poss = possibilities.pop  # look at this possible solution
      if poss[:amount] == 0     # it's a solution!
        return poss[:result]
      elsif poss[:amount] > 0   # it's not quite there but explore it
        # add some more possibilities to the list
        poss[:notes].reverse.each do |note|
          possibilities.push({
            amount: poss[:amount] - note,
            notes: notes,
            result: poss[:result] + [note]
          })
        end
      end
    end
    # if we got here, we ran out of possibilities
    nil
  end
end

# ----------------------------------------------------------------------

require 'minitest/spec'
require 'minitest/autorun'

describe 'atm' do
  [
    [0, []],
    [20, [20]],
    [70, [50, 20]],
    [-10, nil],
    [80, [20, 20, 20, 20]],
    [130, [50, 20, 20, 20, 20]],
  ].each do |input, expected|
    it "should return #{expected.inspect} when $#{input} is withdrawn" do
      ATM.new.withdraw(input).must_equal expected
    end
  end

  [
    [80, [28, 28, 15, 5, 1, 1, 1, 1]],
  ].each do |input, expected|
    it "should return #{expected.inspect} when $#{input} is withdrawn" do
      ATM.new.withdraw(input, notes: [28, 15, 5, 1]).must_equal expected
    end
  end

  [
    [0, []],
    [20, [20]],
    [70, [50, 20]],
    [-10, nil],
    [80, [20, 20, 20, 20]],
    [130, [50, 20, 20, 20, 20]],
  ].each do |input, expected|
    it "should return #{expected.inspect} when $#{input} is withdrawn" do
      ATM.new.withdraw_loop(input).must_equal expected
    end
  end

end
