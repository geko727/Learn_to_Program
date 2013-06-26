#11.8 A Few Things to Try
#Safer picture downloading

Dir.chdir '/home/codecery/pic'

pic_names = Dir['/home/codecery/cam/*.{JPG,jpg}']
                                 

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:"

pic_number = 1

pic_names.each do |name|
	print '.' 
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}"
		else
		"#{batch_name}#{pic_number}"
		end

		save_name = new_name + ".jpg"

# Verifica los nombres para no sobreescribir imagenes
		while File.exist? save_name
			new_name += 'a'
			save_name = new_name + ".jpg"
		end

		File.rename name, save_name
		
		pic_number = pic_number + 1
end
puts 
puts 'Done!'
