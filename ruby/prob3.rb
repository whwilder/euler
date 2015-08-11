# Largest prime factor

def isPrime?(n)
   prime=true
   2.upto(Math.sqrt(n).floor){|i| prime = nil if n % i ==0}
   return prime
end

num = 600851475143
primeFactors = []
2.upto(Math.sqrt(num).floor) do |i|
   primeFactors << i if num % i == 0 && isPrime?(i)
end
puts primeFactors.max
