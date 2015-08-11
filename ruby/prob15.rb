# Lattice paths
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?
# note: we are traveling along the vertices and edges

MAX_DIM = 1001
grid = Array.new(MAX_DIM){Array.new(MAX_DIM,0)}

len = grid.length - 1
grid[len][len] = 1

len.downto(0) do |row|
   len.downto(0) do |col|
      grid[row][col] += grid[row+1][col] if not grid[row+1].nil?
      grid[row][col] += grid[row][col+1] if not grid[row][col+1].nil?
   end
end
puts grid[0][0]
