f = File.open("./script.rb", 'w')
while line = gets
  if line =~ /~~~<666~END~OF~SCRIPT~999>~~~.*/
    break
  else
    f.write line
  end
end
f.close
require "./script.rb"
