# Names scores

# get all the names and sort them
names = File.open("../p022_names.txt").readlines[0].chomp.gsub('"', '').split(",").sort
scores = []
# get the name score for each name
names.each_with_index{|name, idx| scores << (1+idx) * name.split('').inject(0){|sum,ch| sum + (ch.ord - 64)}}
puts scores.reduce(:+)
