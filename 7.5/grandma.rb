#7.5 A Few Things to Try
#Deaf Grandma
men = gets.chomp
rep = 'HUH?! SPEAK UP, SONNY!'
while men != 'BYE'
    if men == men.upcase
          a = rand(50)
          if a > 30
               puts 'NO, NOT SINCE 19'+a.to_s+'!'
          else 
              a += 30
              puts 'NO, NOT SINCE 19'+a.to_s+'!'
          end
     else
          puts rep
     end
men = gets.chomp
end
puts 'BYE, SONNY!'

