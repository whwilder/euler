# 10,001st prime

MAX_NUM = 125000
primes = {}
nums = Array.new(MAX_NUM){|i| i}
2.upto(MAX_NUM) do |i|
   n = i
   while n < MAX_NUM do
         n += i
      if not nums[i].nil?
         if not nums[n].nil? then nums[n] = nil end
      end
   end
end
nums.delete(nil)
nums.delete(0)
nums.delete(1)
puts nums[10000]
#puts nums.size

#i=2
#candidate = 3
#primes[1] = 2
#while i < 10001 do
#   Math.sqrt(candidate).floor.downto(2){|i| }
#   i += 1
#end
