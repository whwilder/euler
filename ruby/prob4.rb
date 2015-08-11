# Largest palindrome product

palindromes = []
999999.downto(100000){|i| if i.to_s =~ /(\d)(\d)(\d)\3\2\1/ then palindromes << i end}
palindromes.each{|p| 999.downto(100).select{|i| if (p%i).zero? && p/i < 1000 then puts "#{p}: #{p/i} #{i}"; return p; end}}
