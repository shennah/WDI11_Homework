
# [] [A-Z] . + * ? {n} (x|y) ^ $ \1

File.open('file.txt') do |f|
  while line = f.gets
    line.chomp!
    if line =~ /fred/
      puts line
    end

  end
end
