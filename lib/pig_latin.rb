# require "pig_latin/version"

module PigLatin
	
	def self.translate(word)
		pig_word = ''
		if word.match(/^([y+])([a-z]*)/)
		 	pig_word = $2 + $1 + "ay"
		elsif word.match(/^[aeiou+]/)
			pig_word = word + "way"
		elsif word.match(/(^[^aeiouy]+)([a-z]*)/)
		 	pig_word = $2 + $1 + "ay"
		else
			"That is not a word."
		end
	end
end
