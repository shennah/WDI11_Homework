def to_roman(n)
  result = ""
  [
    [1000, "M"],
    [900, "CM"],
    [500,  "D"],
    [400, "CD"],
    [100,  "C"],
    [90,  "XC"],
    [50,   "L"],
    [40,  "XL"],
    [10,   "X"],
    [9,   "IX"],
    [5,    "V"],
    [4,   "IV"],
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
p to_roman(2751) == "MMDCCLI"
p to_roman(448) == "CDXLVIII"
