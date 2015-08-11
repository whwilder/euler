$sums = []
$paths = []
numTriangle = [
[75],
[95, 64],
[17, 47, 82],
[18, 35, 87, 10],
[20, 4, 82, 47, 65],
[19, 1, 23, 75, 3, 34],
[88, 2, 77, 73, 7, 63, 67],
[99, 65, 4, 28, 6, 16, 70, 92],
[41, 41, 26, 56, 83, 40, 80, 70, 33],
[41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
[53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
[70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
[91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
[63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
[4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]
]
#numTriangle = []
#lines = File.open("p067_triangle.txt").readlines
#lines.each{|line| numTriangle << line.chomp.split(" ").map{|i| i.to_i}}
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
