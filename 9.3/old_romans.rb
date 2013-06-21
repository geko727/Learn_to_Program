   a = gets.chomp
    num = a.to_i
 # imprime las X     
      def diez num
         d = num/10
         e = 1
         while e <= d
                 print 'X'
                 e += 1
         end
       end
# imprime las I     
       def unos num
        b = 1
        while b <= num 
            print 'I'
            b += 1 
        end  
      end
# imprime la V
      def cinco 
          print 'V'
      end
# imprime la L     
      def cincuenta
          print 'L'
      end
# imprime la D     
      def quinientos
          print 'D'
      end
#imprime la C
        def cien num
             d = num/100
             e = 1
            while e <= d
                 print 'C'
                 e += 1
            end
        end
#imprime la M
        def mil num
             d = num/1000
             e = 1
            while e <= d
                 print 'M'
                 e += 1
            end
        end
# evalua los numeros menores a 100
    def antes100 num
          if num < 5 
              unos num
          elsif  num == 5
              cinco  
          elsif  num >= 5 && num < 10
              cinco
              c = num - 5
              unos c
          elsif num/10 != 0 && num < 50
              diez num
                  if num%10 !=0 && num%10 < 5
                        f = num%10
                        unos f
                elsif num%10 > 5
                        cinco
                        g = (num%10) - 5 
                        unos g
                elsif num%10 == 5
                         cinco
                end
          elsif num == 50
            cincuenta
      end
end      

# imprime numeros menores a 100
        def al100 num   
           antes100 num
                if num > 50 && num < 100
                   cincuenta
                   h = num - 50
                   antes100 h
                end
        end
# imprime numeros menores a 500
        def al500 num
            if num < 100
                al100 num            
            elsif num == 100
                cien num
            elsif num > 100 && num < 500
                 cien num
                 i = num%100
                 al100 i    
            end
        end
# imprime numeros menores a 1000
        def al1000 num
            if num == 500 
                quinientos
            elsif num > 500 && num < 1000
                quinientos
                 j = num - 500
                 al500 j
            end
        end
#valida la cifras hasta 1000
        def validate num
                if num < 100 
                al100 num
                elsif num < 500
                al500 num
                elsif num < 1000
                al1000 num
                end
        end
#valida cifras con miles
        def miles num
                if num >= 1000
                    mil num
                    k = num%1000
                    validate k
                end
        end
#valida cifras completas
        def romanos num
                if num < 100 
                al100 num
                elsif num < 500
                al500 num
                elsif num < 1000
                al1000 num
                elsif num >= 1000
                miles num
                end
        end

romanos num
     