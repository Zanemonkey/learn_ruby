class Timer
 
	attr_accessor :seconds
	# attr_reader :time_string

	def initialize
		@seconds = 0
	end

	def time_string
		hours = (@seconds / 3600).to_s
		minutes = ((@seconds - (hours.to_i * 3600)) / 60).to_s
		seconds = (@seconds - (hours.to_i * 3600) - (minutes.to_i * 60)).to_s
		hours = "0" + hours unless hours.to_i > 9
		minutes = "0" + minutes unless minutes.to_i > 9
		seconds = "0" + seconds unless seconds.to_i > 9
		return "#{hours}:#{minutes}:#{seconds}"
	end

end
