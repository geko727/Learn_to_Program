#12.2 A Few Things to Try
#Happy Birthday!

puts 'Type the year when you were born'
y = gets.chomp
puts 'Type the month when you were born'
m = gets.chomp
while m.to_i <= 0 || m.to_i >= 13
	puts 'Type the number between 1 - 12'
		m = gets.chomp
	end
puts 'Type the day when you were born'
d = gets.chomp
if m.to_i == 2 && d.to_i > 28
	puts 'entra'
	while d.to_i <= 0 || d.to_i >= 29
	puts 'Type the number between 1 - 28'
		d = gets.chomp
	end
else
while d.to_i <= 0 || d.to_i >= 32
	puts 'Type the number between 1 - 31'
		d = gets.chomp
	end
end
time = Time.new.year
a = time.to_i - y.to_i
month = Time.new.month
day = Time.new.day
if m.to_i > month.to_i 
puts "You are #{a-1} years old!"
b = 1
while b <= a 
	puts "SPANK!"
	b += 1
end
elsif m.to_i == month.to_i && d.to_i > day.to_i
	puts "You are #{a-1} years old!"
b = 1
while b <= a 
	puts "SPANK!"
	b += 1
end
else
puts "You are #{a} years old!"
b = 1
while b <= a 
	puts "SPANK!"
	b += 1
end
end
#puts time - Time.local(y.to_i, m.to_i, d.to_i)