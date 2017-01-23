param1 = 2
param2 = 2
array1 = [10, 4, 10]

def add(x, y)
	# Takes two parameters and adds them
	answer = x + y
	puts answer
	return answer
end

def subtract(x, y)
	# Takes two parameters, subtracts the second from the first
	answer = x - y
	puts answer
	return answer
end

def sum (arr)
	# Takes an array of parameters and adds them all together
	arrayLength = arr.length
	x = 0
	answer = 0
	while x <= arrayLength do
		answer = answer + arr[x].to_i
		x = x + 1
	end
	puts answer.to_s
	return answer.to_i
end

def multiply (arr)
	# Takes an array of parameters and multiplies them all together
	arrayLength = arr.length - 1
	x = 2
	answer = arr[0].to_i * arr[1].to_i
	while x <= arrayLength do
		answer = answer * arr[x].to_i
		x = x + 1
	end
	puts answer.to_s
	return answer.to_i
end

def power (x,y)
	# Raises the first number to the power of the second number
	answer = x ** y
	puts answer
	return answer
end

def factorial (x)
	# 5! = 5 x 4 x 3 x 2 x 1
	nextNum = x.to_i - 1
	answer = x.to_i * nextNum

	while nextNum > 1 do
		nextNum = nextNum - 1
		answer = answer * nextNum
	end

	if answer == 0
		answer = 1
	end

	puts answer.to_s
	return answer.to_i

end

# add(param1, param2)
# subtract(param1,param2)
# sum(array1)
# multiply(array1)
# power(2,2)
factorial(0)