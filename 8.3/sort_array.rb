#8.3 A Few Things to Try
#Building and sorting an array
 w = [ ]
      puts 'Type as many words as you want'
      a = 1
      while a != ''
           a = gets.chomp
           if a == ''
           puts 'press enter to exit or type a word'
                  a = gets.chomp
                  if a == ''
                  break
                  end
           end
           w.push a
      end
      puts w.sort      