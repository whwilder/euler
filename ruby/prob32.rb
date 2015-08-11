# Pandigital products

class Array
   def to_i
      inject(0) {|i,n| n+=i;n*=10} / 10
   end
end

products = [1,2,3,4,5,6,7,8,9].permutation.each_with_object([]) do |p,arr|
   mult1 = p[0..1].to_i
   mult2 = p[2..4].to_i
   product = p[5..-1].to_i
   arr << product if mult1 * mult2 == product
   if p[0] > 1 then
      mult3 = p[0..0].to_i
      mult4 = p[1..4].to_i
      product2 = p[5..-1].to_i
      arr << product2 if mult3 * mult4 == product2
   end
end
puts products.uniq
puts products.uniq.reduce(:+)
