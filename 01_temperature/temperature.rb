temperature = 37.0
resultTemp = 0.0

#ftoc
# resultTemp = (temperature - 32) * 5/9

#ctof
# resultTemp = temperature * 9/5 + 32

# T(°C) = (68°F - 32) × 5/9 = 20 °C
def ftoc(temperature)
	resultTemp = (temperature - 32) * 5.0/9.0
end

# T(°F) = 20°C × 9/5 + 32 = 68 °F
def ctof(temperature)
	resultTemp = temperature * 9.0/5.0 + 32
end

puts "Original temperature: " + temperature.to_s
puts "Converted temperature: " + resultTemp.to_s

# puts "This program converts fahrenheit to celsius"
# puts "or vice versa."
# puts ""
# puts "Convert 1) F to C, or 2) C to F?"
# puts "Any other key exits the program."
# puts ""
# convertType = gets.chomp
# convertType = convertType.to_i

# if convertType != 1 || convertType != 2
# 	exit
# end

# if convertType == 1
# 	puts "Converting fahrenheit to celsius."
# 	puts "Enter fahrenheit temperature to convert:"
# 	puts ""
# 	answer = gets.chomp
# 	temperature = answer.to_f
# 	ftoc(temperature)
# 	puts temperature.to_s + " (F) equals " + resultTemp.to_s + "(C)"
# 	exit
# end

# if convertType == 2
# 	puts "Converting celsius to fahrenheit."
# 	puts "Enter celsius temperature to convert:"
# 	puts ""
# 	answer = gets.chomp
# 	temperature = answer.to_f
# 	ctof(temperature)
# 	puts temperature.to_s + " (C) equals " + resultTemp.to_s + "(F)"
# 	exit
# end





