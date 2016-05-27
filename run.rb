f = File.open("./script.rb", 'w')
expect_script = true
while line = gets
  if line =~ /~~~<666~END~OF~SCRIPT~999>~~~.*/
    if expect_script
      expect_script = false
    else
      break      
    end
  else
    if expect_script
      f.write line
    else
      if line =~ /(.+)=(.+)/
        ENV[$1] = $2.chomp
      end
    end
  end
end
f.close
require "./script.rb"
