def is_consonant (letter, preceding_letter)
	vowels = ["a", "e", "i", "o", "u"]
	if vowels.include? letter 
		return false unless letter == "u" and preceding_letter == "q"
		return true
	else
		return true
	end
end

def translate (phrase)
	words = phrase.split(" ")
	translated_phrase = []
		words.each do |word|
			letters = word.split("")
			#print word + " was split into ["
			#letters.each do |letter| 
			#	print letter + ", "
			#end
			#puts "]"

			head = ""
			i = 0
			done = false
			
			while not done
				#puts "testing " + letters[i]
				if is_consonant letters[i].downcase, letters[i - 1]
					#puts letters[i] + " is a consonant"	

					head += letters[i]
					i += 1
				else
					#puts letters[i] + " is a vowel"
					done = true
				end
			end
				
			letters.shift(i)
				
			translated_word = letters.join + head + "ay"
			translated_phrase << translated_word 
		end
	return translated_phrase.join(" ")
end




