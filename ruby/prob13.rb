# Large sum

puts File.open("../p013_nums.txt").readlines.map{|i| i.to_i}.reduce(:+).to_s[0..9]
