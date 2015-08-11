require 'imageruby'

include ImageRuby

def pascal(n)
  raise ArgumentError, "must be positive." if n < 1
  yield ar = [1]
  (n-1).times do
    ar.unshift(0).push(0) # tack a zero on both ends
    yield ar = ar.each_cons(2).map{|a, b| a + b } 
  end
end
MAX = 343
r=0
rows = []
pascal(MAX){|row| rows << row.map{|i| i%7}.join("").center(MAX).split("").map{|i| i.to_i}}
image = Image.new(MAX,MAX)
0.upto(MAX-1) do |row|
   0.upto(MAX-1) do |i|
      if rows[row][i] == 0 then image[i,row] = Color.black
      else image[i,row] = Color.white end
   end
end
image.save("tri.bmp", :bmp)
