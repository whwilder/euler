# Special Pythagorean triplet

MAX_NUM = 1000
triples = []
1.upto(MAX_NUM - 1) do |a|
   a.upto(MAX_NUM) do |b|
      c2 = a**2 + b**2
      c = Math.sqrt(c2).floor
      triples << [a,b,c] if a**2+b**2 == c**2
   end
end
sums = []
triples.each{|trip| sums << trip.reduce(:+)}
puts triples[sums.index(MAX_NUM)].reduce(:*)
