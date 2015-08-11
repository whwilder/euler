# Non-abundant sums

require 'prime'

def factors_of(number)
   primes, powers = number.prime_division.transpose
   exponents = powers.map{|i| (0..i).to_a}
   divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
   end
   divisors.sort.map{|div| [div, number / div]}.flatten.uniq - [number]
end

abundant = []
(12..28123).each{|i| abundant << i if factors_of(i).reduce(:+) > i}
sums = []
0.upto(abundant.length){|i| i.upto(abundant.length-1){|j| sums << (abundant[i]+abundant[j])}}
puts ((1..28123).to_a - sums).reduce(:+)
