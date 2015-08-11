# Anagramic squares

words = File.open("../p098_words.txt").readlines[0].split(',').each_with_object([]) {|word,arr| arr << word[1..-2]}
#squares = 1.upto(10000000).to_a.each_with_object([]) {|i,arr| arr << i**2 }

#sums = words.each_with_object([]) {|word,arr| arr << word.unpack("c*").reduce(:+)}
#sums.zip(words).each{|a| printf "%4d %14s %2d\n",a[0], a[1], a[1].length}

words.sort!{|a,b| a.length <=> b.length}
wordLens = (1..14).each_with_object([]) {|i,arr| arr << words.select{|word| word.length == i}}

words.each do |word| 
   sorted = word.to_a.sort.join
   idx = word.length - 1
   simLen = wordLens[idx]
   anagrams = 
end
