# Distinct powers

puts (2..100).each_with_object([]) {|a,arr| 2.upto(100){|b| arr << a ** b} }.uniq.size
