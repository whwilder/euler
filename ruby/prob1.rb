# Multiples of 3 and 5

a=[]
1.upto(999){|i| a << i if i % 3 == 0 || i % 5 == 0}
puts a.reduce(:+)
