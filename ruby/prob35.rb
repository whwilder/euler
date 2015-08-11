# Circular primes
MAX_NUM = 1000000

$nums = Array.new(MAX_NUM){|i| i}
def isCircular(n)
   digits = n.to_s.split ""
   result = n
   1.upto(digits.length) do |i|
      num = digits.rotate!.join.to_i 
      limit = Math.sqrt(num).floor
      $nums.each do |prime|
         break if prime > limit || result.nil?
         result = nil if (num % prime).zero?
      end
   end
   result
end

#3.upto(MAX_NUM){|i| next if i.even?; $nums << i if isPrime(i)}
#puts $nums.size
2.upto(MAX_NUM) do |i|
   n = i
   while n < MAX_NUM do
         n += i
      if not $nums[i].nil?
         if not $nums[n].nil? then $nums[n] = nil end
      end
   end
end
$nums.delete(nil)
$nums.delete(0)
$nums.delete(1)
circular = []
$nums.each do |prime|
   circular << prime if isCircular(prime)
end
puts circular
puts circular.size

#i=2
#candidate = 3
#primes[1] = 2
#while i < 10001 do
#   Math.sqrt(candidate).floor.downto(2){|i| }
#   i += 1
#end
