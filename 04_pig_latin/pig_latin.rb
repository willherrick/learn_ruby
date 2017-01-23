# If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
# banana = ananabay
# cherry = errychay
# three = eethray
# this = isthay

def translate(input)
	inputArray = input.downcase.split(" ")
	answerArray = []
	vowelList = ["a", "e", "i", "o", "u", "y"]
	currentWordNum = 0
	currentLetterNum = 0
	numberOfWords = inputArray.length - 1
	currentWordStr = inputArray[currentWordNum].to_s
	currentWordLength = currentWordStr.length - 1
	currentLetterStr = inputArray[currentWordNum][currentLetterNum].to_s

	while currentWordNum <= numberOfWords

		while currentLetterNum <= currentWordLength

			#if vowelList.include? currentLetterStr == true
			if currentLetterStr.among?vowelList

				previousLetterNum = currentLetterNum - 1
				previousLetterStr = inputArray[currentWordNum][previousLetterNum].to_s

				if currentLetterNum == 0
					currentWordStr = inputArray[currentWordNum].to_s
					
					newWordStr = currentWordStr + "ay"
					puts "newWordStr = " + newWordStr
					
					answerArray = answerArray.push newWordStr
					puts "answerArray = " + answerArray.to_s

					currentLetterNum = currentWordLength + 1

				elsif previousLetterStr == "q"
					#quiet = ietquay
					currentWordStr = inputArray[currentWordNum].to_s
					
					tempLetterNum = currentLetterNum + 1
					newWordPrefix = currentWordStr[tempLetterNum..currentWordLength]
					
					newWordSuffix = currentWordStr[0..currentLetterNum]

					puts "newWordPrefix = " + newWordPrefix
					puts "newWordSuffix = " + newWordSuffix
					
					newWordStr = newWordPrefix + newWordSuffix + "ay"
					puts "newWordStr = " + newWordStr
					
					answerArray = answerArray.push newWordStr
					puts "answerArray = " + answerArray.to_s

					currentLetterNum = currentWordLength + 1

				else
					currentWordStr = inputArray[currentWordNum].to_s
					
					newWordPrefix = currentWordStr[currentLetterNum..currentWordLength]
					tempLetterNum = currentLetterNum - 1
					newWordSuffix = currentWordStr[0..tempLetterNum]
					
					newWordStr = newWordPrefix + newWordSuffix + "ay"
					puts "newWordStr = " + newWordStr
					
					answerArray = answerArray.push newWordStr
					puts "answerArray = " + answerArray.to_s

					currentLetterNum = currentWordLength + 1
				end

			else

				currentLetterNum = currentLetterNum + 1
				currentLetterStr = inputArray[currentWordNum][currentLetterNum].to_s

			end

		end

		currentWordNum = currentWordNum + 1

		if currentWordNum > numberOfWords
			break
		end

		currentWordStr = inputArray[currentWordNum].to_s
		# puts "currentWordStr = " + currentWordStr.to_s

		currentWordLength = currentWordStr.length - 1
		# puts "currentWordLength = " + currentWordLength.to_s
		currentLetterNum = 0
		currentLetterStr = inputArray[currentWordNum][currentLetterNum].to_s

	end

	answer = answerArray.join(' ')
	puts answer
	return answer
end

class String
  def among?(*array)
    array.flatten.include?(self)
  end
end

input = "quiet"
translate(input)



