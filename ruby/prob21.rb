# Amicable numbers

require 'prime'

def factors_of(number)
   primes, powers = number.prime_division.transpose
   exponents = powers.map{|i| (0..i).to_a}
   divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
   end 
   divisors.sort.map{|div| [div, number / div]}.flatten.uniq - [number]
end

amicable = {}
2.upto(10000) do |i|
   if amicable[i].nil?
      facsum = factors_of(i).reduce(:+)
      facsum2 = factors_of(facsum).reduce(:+) if facsum > 1
      if i == facsum2 && i != facsum then
         amicable[i] = true
         amicable[facsum] = true
      end
   end
end
puts amicable.keys.reduce(:+)
