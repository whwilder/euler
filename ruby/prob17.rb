# Number letter counts

digits = {
   0 => "",
   1 => "one",
   2 => "two",
   3 => "three",
   4 => "four",
   5 => "five",
   6 => "six",
   7 => "seven",
   8 => "eight",
   9 => "nine"
}

powers = {
   0 => "",
   1 => "",
   2 => "hundred",
   3 => "thousand"
}

tens = {
   0 => "",
   2 => "twenty",
   3 => "thirty",
   4 => "forty",
   5 => "fifty",
   6 => "sixty",
   7 => "seventy",
   8 => "eighty",
   9 => "ninety",
}

teens = {
   0 => "ten",
   1 => "eleven",
   2 => "twelve",
   3 => "thirteen",
   4 => "fourteen",
   5 => "fifteen",
   6 => "sixteen",
   7 => "seventeen",
   8 => "eighteen",
   9 => "nineteen",
}
numStr = ""
(1..1000).each do |i|
   arr = []
   ones = i%10
   ten = i%100/10
   hundreds = i/100%10
   thousands = i/1000

   if ten == 1 then
      arr.unshift teens[ones]
   else
      arr.unshift digits[ones]
      arr.unshift tens[ten]
   end
   if hundreds > 0
      arr.unshift "and" if ten > 0 or ones > 0
      arr.unshift digits[hundreds], powers[2]
   end
   if thousands > 0 then
      arr.unshift digits[thousands], powers[3]
   end
   #puts arr.join
   numStr += arr.join
end
puts numStr.length
