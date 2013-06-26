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

def sort array
recursive_sort array, []
puts sorted
end

def recursive_sort unsorted, sorted

  if unsorted[0] == nil
    return sorted
  end


  ultima = unsorted.pop
  x = []

  unsorted.each do |y|
      if y < ultima
        x.push ultima
        ultima = y
      else
       x.push y
      end

  end
  sorted.push ultima
  recursive_sort x, sorted
end

sort(w)
