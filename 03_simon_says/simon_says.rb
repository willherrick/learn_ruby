def echo (word)
	puts word
	return word
end

def shout (word)
	answer = word.upcase
	puts answer
	return answer
end

def repeat (word, times=2)
	repeatsLeft = times
	answer = ""
	firstTime = true
	while repeatsLeft > 0 do
		if firstTime == true
			answer = word
			repeatsLeft = repeatsLeft - 1
			firstTime = false			
		else
			answer = answer + " " + word
			repeatsLeft = repeatsLeft - 1
		end
	end
	puts answer
	return answer
end

def start_of_word (word, letters=2)
	letters = letters - 1
	answer = word[0..letters]
	puts answer
	return answer
end

def first_word (sentence)
	answer = sentence.split.first
	puts answer
	return answer
end

def titleize (sentence)
	noCap = ["and", "or", "the", "over", "to", "the", "a", "but"]
	sentence[0] = sentence[0].capitalize
	answer = sentence.split(" ").map {|word|
		if noCap.include?(word)
			word
		else
			word.capitalize
		end
	}.join(" ")
	puts answer
	return answer
end

input = "the bridge over the river kwai"
#echo(input)
#shout(input)
#repeat(input)
#start_of_word(input, 2)
#first_word(input)
titleize(input)