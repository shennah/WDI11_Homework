require 'time'

deadline = Time.parse(ARGV.first) rescue (Time.now + 60*60)

while Time.now < deadline
  s = deadline - Time.now
  m, s = s.divmod(60)
  print "\e[1J"
  str = format("%02d:%02d", m, s)
  system('figlet', '-f', 'larry3d', str) || puts(str)
  sleep 1
end
