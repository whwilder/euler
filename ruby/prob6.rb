# sum square difference

puts (1..100).reduce(:+) ** 2 - (1..100).map{|i| i ** 2}.reduce(:+)
