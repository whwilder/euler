# Longest Collatz sequence

lengths = []
i = 3
max = 0
while i < 1000_000 do
   num = i
   length = 1
   while num != 1 do
      #puts num if num > 1000_000
      if num.even? then num >>= 1 
      elsif num.odd? then num = (num * 3 + 1) end
      if not lengths[num].nil? then
         length += lengths[num]
         lengths[i] = length
         break;
      end
      length += 1
   end
   lengths[i] = length if lengths[i].nil?
   i += 2
end
#puts lengths.keys.zip(lengths.values).inspect
#puts lengths.size
#puts lengths[837799]
max = 0
lengths.each{|i| max = i if !i.nil? && i > max}
#puts max
puts lengths.index(max)
