#write your code here

def add (x, y)
	x + y
end

def subtract (x, y)
	x - y
end

def sum (array)
	result = 0
	array.each do |i|
		result += i
	end
	result
end

def multiply (array)
	result = 1
	array.each do |i|
		result *= i
	end
	result
end

def power (x, y)
	x**y
end

def factorial (x)
	result = 1
	i = 2
	while (i <= x)
		result *= i
		i += 1
	end
	result
end
