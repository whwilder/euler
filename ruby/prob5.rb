# smallest multiple

puts (1..20).to_a.inject{|lcm,i| i.lcm(lcm)}
