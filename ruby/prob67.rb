$sums = []
$paths = []
numTriangle = []
lines = File.open("../p067_triangle.txt").readlines
lines.each{|line| numTriangle << line.chomp.split(" ").map{|i| i.to_i}}
#numTriangle = [
#[3],
#[7, 4],
#[2, 4, 6],
#[8, 5, 9, 3]
#]


(numTriangle.length-2).downto(0) do |i|
   0.upto(numTriangle[i].length-1) do |j|
      idx = 0
      if numTriangle[i+1][j] > numTriangle[i+1][j+1] then idx = 0
      else idx = 1 end
      numTriangle[i][j] += numTriangle[i+1][j+idx]
   end
end
puts numTriangle[0].inspect

#def getAdjacent(triangle,row,rowIndex)
#   return [triangle[row+1][rowIndex], triangle[row+1][rowIndex+1]]
#end
#
#def getPathSums(triangle,row,rowIndex,sum, path)
#   if triangle[row+1].nil? then
#      $sums << sum + triangle[row][rowIndex]
#      $paths <<(path.dup << triangle[row][rowIndex])
#      return
#   end
#   num = triangle[row][rowIndex]
#   thisPath = path.dup << num
#   adjacent = getAdjacent(triangle,row,rowIndex)
#   max = adjacent.max
#   min = adjacent.min
#   maxIndex = triangle[row+1].index(max)
#   minIndex = triangle[row+1].index(min)
#   getPathSums(triangle, row+1, maxIndex, sum + num, thisPath)
#   getPathSums(triangle, row+1, minIndex, sum + num, thisPath)
#end
#getPathSums(numTriangle, 0, 0, 0, [])
#puts $sums.index($sums.max)
#puts $paths[8224].inspect
#puts $sums.size
