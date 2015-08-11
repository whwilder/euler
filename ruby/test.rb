n=11
puts sevens=21*(7**(n-1)*(7**(n-1)-1)/2)+588*((1..n-2).inject do |acm,i| 
acm + (7**(n-i)*(7**(n-i)-1)/2)
end )
puts total=7**n*(7**n+1)/2
puts total-sevens
puts row=7**n
puts tenrow=10**9
puts row-tenrow
puts 10**9*(10**9+1)/2
puts sevens/total.to_f

     #21*(7**(4-1)*(7**(4-1)-1)/2)+21*28*((1..2).inject{|i,acm| acm+=7**(4-i)*(7**(4-i)-1)/2})
