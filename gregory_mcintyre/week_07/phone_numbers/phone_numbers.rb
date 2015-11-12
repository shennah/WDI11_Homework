
def normalize_phone_number_old(num)
  if num[0] == '1'
    num = num[1, num.length]
  end

  if num.length == 10
    return num
  else
    return nil
  end
end

def normalize_phone_number(num)
  result = /^1?(\d{10})$/.match(num)
  if result
    result.captures.first
  end
end

# ------------

require 'minitest/autorun'

describe 'normalize_phone_number' do
  it 'less than 10 digits assume that it is bad number' do
    normalize_phone_number('123').must_equal nil
  end
  it '10 digits assume that it is good' do
    normalize_phone_number('0123456789').must_equal '0123456789'
  end
  it '11 digits and the first number is 1, trim the 1 and use the first 10 digits' do
    normalize_phone_number('10123456789').must_equal '0123456789'
  end
  it '11 digits and the first number is not 1, then it is a bad number' do
    normalize_phone_number('20123456789').must_equal nil
  end
  it 'more than 11 digits assume that it is a bad number' do
    normalize_phone_number('3898392820123456789').must_equal nil
  end
  it '?' do
    normalize_phone_number('0123 456789').must_equal '0123 456789'
  end
end