class Book
	attr_accessor :title

	def initialize (title="This book needs a title!")
		@title = title
	end

	def title
		@title
	end

	def title=(input)
		inputArray = input.downcase.split(" ")
		answerArray = []
		doNotCapList = ["a", "an", "and", "in", "of", "the"]
		
		currentWordNum = 0
		numberOfWords = inputArray.length - 1
		currentWordStr = inputArray[currentWordNum].to_s

		while currentWordNum <= numberOfWords
			if currentWordNum == 0
				newWordStr = currentWordStr.capitalize
			elsif currentWordStr.among?doNotCapList
				newWordStr = currentWordStr.downcase
			else
				newWordStr = currentWordStr.capitalize
			end

			answerArray = answerArray.push newWordStr
			currentWordNum = currentWordNum + 1
			currentWordStr = inputArray[currentWordNum].to_s
		end

		@title = answerArray.join(' ')
	end

end

class String
  def among?(*array)
    array.flatten.include?(self)
  end
end


