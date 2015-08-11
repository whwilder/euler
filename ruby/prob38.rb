
def isPandigital(s)
   return s.length == 9 && ! (s =~ /0|[0-8].{8}|(\d).*\1/)
end

nums = (9000..9999).each_with_object([]) do |n,arr| 
   num = ""
   reps = 5 - Math.log10(n).ceil + 1
   for i in (1..reps)
      num += (n*i).to_s
      #num *= 10 * (Math.log10(num).ceil + 1)
      #puts Math.log10(num).ceil
   end
   #puts num
   conc = num.to_s
   #puts isPandigital(conc)
   arr << conc if isPandigital(conc)
end
puts nums.max
