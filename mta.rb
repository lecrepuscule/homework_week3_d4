mta = {
  N: ["Times Square", "34th", "28th-N", "23rd-N", "Union Square", "8th-N" ],
  L: ["8th-L", "6th", "Union Square", "3rd", "1st"],
  "6": ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"]
}

print "Starting line N, L, 6?"
start_line = gets.chomp.capitalize.to_sym
unless mta.keys.include?(start_line)
  print "Please choose from N, L or 6"
  start_line = gets.chomp.capitalize.to_sym
end

print "Starting Station?"
start_station = gets.chomp.


def getValidLine ()
  line = gets.chomp.capitalize.to_sym
  unless mta.keys.include?(line)
    print "Please choose from N, L or 6"
    line = gets.chomp.capitalize.to_sym
  end
  return line
end

def getValidStation (line)
  station = gets.chomp.split(" ").map{ |a| a.capitalize}.join(" ")
  readable_stations = mta[line].map{|s| s.split("-")[0]}
  unless readable_stations.include?(station)
    print "Please choose from" + readable_stations.join(" , ")
    station = gets.chomp.split(" ").map{ |a| a.capitalize}.join(" ")
  end
  return station
end
  
