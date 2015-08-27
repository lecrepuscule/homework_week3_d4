mta = {
  N: ["Times Square", "34th", "28th-N", "23rd-N", "Union Square", "8th-N" ],
  L: ["8th-L", "6th", "Union Square", "3rd", "1st"],
  "6": ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"]
}

def getReadableStation (line, mta)
  readable_stations = mta[line].map{|s| s.split("-")[0]}
end

def getValidLine (mta)
  line = gets.chomp.capitalize.to_sym
  while !(mta.keys.include?(line))
    puts "Please choose from N, L or 6"
    line = gets.chomp.capitalize.to_sym
  end
  return line
end

def getValidStation (line, mta)
  station = gets.chomp.split(" ").map{ |a| a.capitalize}.join(" ")
  readable_stations = getReadableStation(line, mta)
  while !(readable_stations.include?(station))
    puts "Please choose from " + readable_stations.join(" , ")
    station = gets.chomp.split(" ").map{ |a| a.capitalize}.join(" ")
  end
  return station
end

def runProgramme (mta)

  puts "Starting line N, L, 6? "
  start_line = getValidLine(mta)
  puts "start line is " + start_line.to_s

  puts "Starting Station? "
  start_station = getValidStation(start_line, mta)
  puts "start station is " + start_station.to_s

  puts "Destination line N, L, 6? "
  end_line = getValidLine(mta)
  puts "end line is " + end_line.to_s

  puts "Destination Station? "
  end_station = getValidStation(end_line, mta)
  puts "end station is " + end_station.to_s

  start_stations = getReadableStation(start_line, mta)
  end_stations = getReadableStation(end_line, mta)

  if start_line == end_line
    stops = (start_stations.index(start_station) - start_stations.index(end_station)).abs
  else
    intercept = mta[start_line] & mta[end_line]
    stops1 = (start_stations.index(start_station) - start_stations.index(intercept[0])).abs
    stops2 = (end_stations.index(end_station) - end_stations.index(intercept[0])).abs
    stops = stops1 + stops2
  end

  puts "The number of stops are: " + stops.to_s
  puts "Would you like to check another route? (y/n)"
  safeword = gets.chomp.downcase
  while safeword != "y" && safeword !="n"
    puts "donno what you mean, please say 'y' or 'n'"
    safeword = gets.chomp.downcase
  end
  safeword == "y" ? runProgramme(mta) : exit
end

runProgramme(mta)

  
