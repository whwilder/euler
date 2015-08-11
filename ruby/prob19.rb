

months = ["jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"]
days = ["tues","wed","thurs","fri","sat","sun","mon"]
sundays = 0
day = 1
1901.upto(2099) do |i|
   months.each do |mo|
      sundays += 1 if day % 7 == 6
      case mo
         when "jan","mar","may","jul","aug","oct","dec"
            day += 31
         when "sep","apr","jun","nov"
            day += 30
         when "feb"
            if i%4 == 0 then day += 29
            else day += 28 end
      end
   end
end
puts sundays
