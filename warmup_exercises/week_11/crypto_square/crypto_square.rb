class Crypto

  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def normalize_plaintext
    #find anything that is not a number or character and replace it with empty space
    phrase.gsub(/[^1-9a-zA-Z]/, "").downcase
  end

  def size
    #ceil goes to closest upper full integer
    #floor goes to closest bottom full integer
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    #scan looks for patterns in the string and put them into an array
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  def ciphertext
    cipher = []
    plaintext_segments.each do |segment|
      segment.chars.each_with_index do |letter, i|
        cipher[i] ||= []
        cipher[i] << letter
      end
    end
    cipher.join
  end

  def normalize_ciphertext
    ciphertext.scan(/.{1,5}/).join(" ")
  end
end
