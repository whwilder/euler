# Reciprocal cycles
#
# Needs optimizing

$NONREPEATING=[2,5]
$REPEATING=[3,7]

def isNonRepeating(n)
   return (n%2==0 || n%5==0) && (n%3!=0 || n%7!=0)
end

numRecur = {}
def getReps(n)
   lpow = 1
   if isNonRepeating(n) then
      return 0
   else
      while lpow < n do
         (lpow-1).downto(0) do |mpow|
            if (10**lpow-10**mpow)%n == 0 then
               return (lpow-mpow)
            end
         end
         lpow += 1
      end
   end
end
(900..1000).each do |n|
   numRecur[n] = getReps(n)
end
puts numRecur[numRecur.values.max]
