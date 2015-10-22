loop do
  input = File.read("counter.txt").to_i

  result = input + 1

  File.open("counter.txt", "w") do |file|
    file.puts result
  end

  #sleep 0.1 # seconds

  # p({input: input, result: result})
  p input: input, result: result
end