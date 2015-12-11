require 'time'

deadline = Time.parse(ARGV.first) rescue (Time.now + 60*60)
font = ARGV[1] || 'fraktur'
p deadline

while Time.now < deadline
  s = deadline - Time.now
  m, s = s.divmod(60)
  print "\e[1J"
  str = format("%02d:%02d", m, s)
  system('figlet', '-f', font, str) || puts(str)
  sleep 1
end
