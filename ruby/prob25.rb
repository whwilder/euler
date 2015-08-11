

fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
fibonacci[2000]
fibonacci[4000]
fibonacci[5000]
fib = fibonacci.values.select{|i| i.to_s.length == 1000}[0]
puts fibonacci.values.index(fib)
