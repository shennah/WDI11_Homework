def to_roman(n)
  result = ""
  [
    [1000, "M"],
    [500,  "D"],
    [100,  "C"],
    [50,   "L"],
    [10,   "X"],
    [5,    "V"],
    [1,    "I"],
  ].each do |n_value, r_value|
    while n >= n_value
      result << r_value
      n -= n_value
    end
  end
  return result
end

p to_roman(27) == "XXVII"
p to_roman(2008) == "MMVIII"
