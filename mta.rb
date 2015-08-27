mta = {
  N: ["Times Square", "34th", "28th-N", "23rd-N", "Union Square", "8th-N" ],
  L: ["8th-L", "6th", "Union Square", "3rd", "1st"],
  "6": ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"]
}

print "Starting line N, L, 6?"
startLine = gets.chomp.capitalize.to_sym
unless mta.keys.include?(startLine)
  print "Please choose from N, L or 6"
  startLine = gets.chomp.capitalize.to_sym
end

print "Starting Station?"
startStation = gets.chomp.


def getValidLine ()
  line = gets.chomp.capitalize.to_sym
  line == 6 ? 
  unless mta.keys.include?(startLine)
    print "Please choose from N, L or 6"
    startLine = gets.chomp.capitalize.to_sym
  end
end

def getValidStation (station)
  station.split(" ").map{ |a| a.capitalize}.join(" ").split("-")[0]
