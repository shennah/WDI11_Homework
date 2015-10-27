def to_roman(n)
  result = ""
  while n >= 1000
    result << "M"
    n -= 1000
  end
  while n >= 500
    result << "D"
    n -= 500
  end
  while n >= 100
    result << "C"
    n -= 100
  end
  while n >= 50
    result << "L"
    n -= 50
  end
  while n >= 10
    result << "X"
    n -= 10
  end
  while n >= 5
    result << "V"
    n -= 5
  end
  while n >= 1
    result << "I"
    n -= 1
  end
  return result
end

p to_roman(27) == "XXVII"
p to_roman(2008) == "MMVIII"
