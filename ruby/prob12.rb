# Highly divisible triangular number

def factor(n)
   factors = []
   1.upto(Math.sqrt(n).floor) do |i|
      if n % i == 0 then
         factors << i
         factors << n / i
      end
   end
   return factors
end

triangNums = []

MAX_NUM = 13000
nums = Array.new(MAX_NUM) {|i| i}

triangs = [1]
2.upto(MAX_NUM) {|i| triangs << triangs[i-2] + i}
triangFactors = triangs.each_with_object([]) {|tri,f| f << factor(tri).length}
puts triangs[triangFactors.index(576)]
