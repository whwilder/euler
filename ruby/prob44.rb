# Pentagon numbers
#
# Seriously in need of optimization

MAX_NUM = 10000
arr = Array.new(MAX_NUM+1) {|i| i*(3*i-1)/2}
pents = Hash[arr.each_with_index.map { |value, index| [index, value] }].invert
pents.delete(0)
#puts pents.inspect
diffs = []
(1..MAX_NUM).each do |i|
   (i+1..MAX_NUM-1).each do |j|
      sum = arr[i]+arr[j]
      diff = arr[j]-arr[i]
      diffs << diff if not pents[sum].nil? and not pents[diff].nil?
   end
end
puts diffs.min
