# Largest exponential

nums = File.open("../p099_base_exp.txt").readlines.map!{|line| line.split(",").map{|i| i.to_i}}.map{|a| a[1] * Math.log10(a[0])}
puts nums.index(nums.max)+1
