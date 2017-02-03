#write your code here

def echo (x)
	x
end

def shout (x)
	x.upcase
end

def repeat (x, y=2)
	result = []
	y.times do 
		result << x
	end
	result.join(" ")
end

def start_of_word (x, y)
	x[0..y-1]
end

def first_word (x)
	x.split(" ").first
end

def titleize (x)
	ret = []
	z = x.split(" ")
	z.each do |y|
		y[0] = y[0].upcase unless y == "and" or y == "over" or (y == "the" and y != z.first) 
		ret << y
	end
	return ret.join(" ")
end






