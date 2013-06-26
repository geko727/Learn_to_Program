#11.8 A Few Things to Try
#Safer picture downloading

Dir.chdir '/home/codecery/Music'

def shuffle arr
shuf = []
	while arr.length > 0
		
		rand_index = rand(arr.length)
		
		curr_index = 0
		new_arr = []
		arr.each do |item|
				if curr_index == rand_index
				shuf.push item
				else
				new_arr.push item
				end
		curr_index = curr_index + 1
		end

	arr = new_arr
	end
	return shuf
end

mp3_names = Dir['/home/codecery/Music/*.{MP3,mp3}']
#puts mp3_names

#puts '................................................'
a = shuffle mp3_names
#puts a
filename = 'playlist.m3u'
File.open filename, 'w' do |f|
	a.each do |x|
	f.write "#{x}\n"
	end
end