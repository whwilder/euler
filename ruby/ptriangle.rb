require 'imageruby'

include ImageRuby

#def triangle(n)
#    (0..n).each{|r|
#            lst=[1]
#            term=1
#            k=1
#            (0..r-1).step(1){|index|
#                    term=term*(r-k+1)/k
#                    lst.push term 
#                    k+=1
#            }
#            p lst.map{|i| i%7}
#    }
#end
#triangle(23)
def pascal(n)
  raise ArgumentError, "must be positive." if n < 1
  yield ar = [1]
  (n-1).times do
    ar.unshift(0).push(0) # tack a zero on both ends
    yield ar = ar.each_cons(2).map{|a, b| a + b } 
  end
end
MAX = 49
r=0
rows = []
pascal(MAX){|row| rows << row.map{|i| i%7}.join(" ").center(100).split("").map{|i| i.to_i}}
image = Image.new(MAX,MAX)
0.upto(MAX-1) do |row|
   0.upto(MAX-1) do |i|
      if rows[row][i] == 0 then image[row,i] = Color.black
      else image[row,i] = Color.white end
   end
end
image.save("tri.bmp", :bmp)
