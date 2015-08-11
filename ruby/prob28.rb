# Number spiral diagonals

LEN = 1001
spiral = Array.new(LEN){Array.new(LEN, 0)}

row = 0
i = LEN ** 2
level = 1
while i > 0 do
   col = LEN - level
   row = level - 1
   # top rows
   while col >= 0 && spiral[row][col] == 0 do
      spiral[row][col] = i if spiral[row][col] == 0
   #puts spiral[row][col]
      col -= 1
      i -= 1
   end
   row = level
   col = level - 1
   # left cols
   while row < LEN && spiral[row][col] == 0 do
      spiral[row][col] = i
   #puts spiral[row][col]
      row += 1
      i -= 1
   end
   row = LEN - level
   col = level
   # bottom rows
   while col < LEN && spiral[row][col] == 0 do
      spiral[row][col] = i
   #puts spiral[row][col]
      col += 1
      i -= 1
   end
   row = LEN - level - 1
   col = LEN - level
   # right cols
   while row >= 0 && spiral[row][col] == 0 do
      spiral[row][col] = i
   #puts spiral[row][col]
      row -= 1
      i -= 1
   end
   level += 1
   #spiral.each{|a| puts a.inspect}
end

diags = []
0.upto(LEN-1){|i| diags << spiral[i][i]}
0.upto(LEN-1){|i| diags << spiral[i][LEN-i-1]}
#puts diags.inspect
puts diags.uniq.reduce(:+)
