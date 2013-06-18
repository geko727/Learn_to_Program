#7.5 A Few Things to Try
#Deaf Grandma Extended
rep = 'HUH?! SPEAK UP, SONNY!'
b = 0
while b <= 2
        men = gets.chomp
      while men != 'BYE'
          if men == men.upcase
              a = rand(50)
              if a > 30
                puts 'NO, NOT SINCE 19'+a.to_s+'!'
                b = 0
              else 
                  a += 30
                  puts 'NO, NOT SINCE 19'+a.to_s+'!'
                  b = 0
               end
          else
              puts rep
              b = 0
          end
      men = gets.chomp
      end
    b+=1

    if b < 3
       puts rep
    end

end

puts 'BYE, SONNY!'

