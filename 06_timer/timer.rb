class Timer

	def initialize (seconds=0)
		@timeLeft = seconds.to_i
		@paddedSeconds = 0
		@paddedMinutes = 0
		@paddedHours = 0
		@hours = 0
		@minutes = 0
		@seconds = 0
		puts "Timer with " + @seconds.to_s + " seconds is created."
	end

	def seconds
		@seconds
	end

	def minutes
		@minutes
	end

	def hours
		@hours
	end

	def time_string
		#Converts seconds to HH:MM:SS
		puts "Time left (seconds): " + @timeLeft.to_s
		@hours = ((@timeLeft / 60.0) / 60.0)
		@hours = @hours.to_i
		@timeLeft = @timeLeft - ((@hours * 60.0) * 60.0)
		puts "Hours: " + @hours.to_s
		puts "Time left (seconds): " + @timeLeft.to_s
		@minutes = @timeLeft / 60.0
		@minutes = @minutes.to_i
		@timeLeft = @timeLeft - (@minutes * 60.0)
		@seconds = @timeLeft
		@seconds = @seconds.to_i
		puts "Minutes: " + @minutes.to_s
		puts "Seconds: " + @seconds.to_s
		@paddedHours = self.padded(@hours)
		@paddedMinutes = self.padded(@minutes)
		@paddedSeconds = self.padded(@seconds)
		puts "Padded Hours: " + @paddedHours.to_s
		puts "Padded Minutes: " + @paddedMinutes.to_s
		puts "Padded Seconds: " + @paddedSeconds.to_s
		@timeString = @paddedHours.to_s + ":" + @paddedMinutes.to_s + ":" + @paddedSeconds.to_s
	end

	def test()
		puts "Test successful."
	end

	def padded(time)
		#Adds a leading 0 to one-digit numbers
		if time < 10
			paddedTime = "0" + time.to_s
		else
			paddedTime = time.to_s
		end

	end

end