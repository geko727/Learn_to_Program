#7.5 A Few Things to Try
#99 Bottles
a = 99
      while a > 0 
          puts a.to_s + ' bottles of beer on the wall, ' + a.to_s + ' bottles of beer.'
          if (a-1) == 0 
          puts 'Take one down and pass it around, no more bottles of beer on the wall.'
          else
          puts 'Take one down and pass it around, ' + (a-1).to_s + ' bottles of beer on the wall.'
          end
          a -= 1    
      end
      puts 'No more bottles of beer on the wall, no more bottles of beer.'
      puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'