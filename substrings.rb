
def substrings(string, dic)
	hash = Hash.new(0)
	matchs =[]
	s = string.split(" ")
	s.each do |s|
		dic.each { |w| 
			matchs << w if s.downcase.include?(w.downcase)
		}
	end

	
	matchs.each { |k|
		hash[k] += 1
	}
	puts hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
s = "below"
substrings(s, dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
