#7.5 A Few Things to Try
#Leap Years
puts 'Enter starting year.'
      s = gets.chomp
      puts 'Enter ending year.'
      e = gets.chomp
      a = s.to_i
      b = e.to_i
      while a <= b
              if a%400 == 0 || a%4 == 0 && a%100 != 0
              puts a
              end       
      a+=1
      end