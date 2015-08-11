
def xor(vals,key)
   vals.zip(key.unpack("c*")).map {|a,b| a ^ b}.reduce(:+)
end

values = File.open("../p059_cipher.txt").readlines[0].chomp.split(",").map{|i| i.to_i}
STDERR.puts values.length
sample = values[3..5]
STDERR.puts xor(sample,"abc")

keys = ["aoa"]
start = "a"
keys << start.succ!.dup + "oa" until start == "z"
#keys.delete_if{|key| key =~ /[abcdefghijklnopqrstu]..|.[defg].|..[lprsw]/}
#This is the correct key
keys = ["god"]

plain = []
keys.each do |key| 
   text = 0
   values.each_slice(3) do |str|
      text += xor(str,key)
   end
   #text = xor(sample,key)
   puts "#{key} #{text}" 
end
