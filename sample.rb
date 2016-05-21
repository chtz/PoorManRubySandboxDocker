while line = gets
  puts "- #{line.chomp}"
  STDOUT.flush
  sleep 1
end
