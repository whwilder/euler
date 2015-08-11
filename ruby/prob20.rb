# Factorial digit sum

puts (1..99).to_a.inject(1){|acm,i| acm * i}.to_s.split("").map{|i| i.to_i}.reduce(:+)
