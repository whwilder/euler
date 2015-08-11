# Even Fibonacci numbers

MAX_IDX=1000
fib=Array.new(MAX_IDX)
fib[0]=fib[1]=1
2.upto(MAX_IDX){|i| fib[i]=fib[i-1]+fib[i-2]}
puts fib.take_while{|i| i < 4000000}.select{|i| i.even?}.reduce(:+)

#fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
#fibonacci[MAX_IDX]
#puts fibonacci.values.take_while{|i| i <= 4000000}.select{|i| i.even?}.reduce(:+)

