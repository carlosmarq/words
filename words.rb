@line_num=0
@ALLwords = []
@ALLcombinations = []
File.open('words.txt').each do |line|
  @line_num=@line_num+1
  @y0=line
  @y0.delete!("\n")
#  print @y0
  @ALLwords << @y0
end

#print @ALLwords

#print @ALLwords[0]
#print @ALLwords.length

#system 'clear'



    (0...@ALLwords.length).each do |i|
        (0..@ALLwords.length-1).each do |j|
        combine = @ALLwords[j]+@ALLwords[i]
        @ALLcombinations << combine
      end
    end


#    print @ALLcombinations
#   print @ALLcombinations.length



    (0..@ALLcombinations.length-1).each do |i|
        (0..@ALLwords.length-1).each do |j|
        if @ALLcombinations[i] == @ALLwords[j]
          #puts "#{@ALLcombinations[i]} si es igual a #{}{@ALLwords[j]} "
          puts "#{@ALLcombinations[i]}"
          #break
        end
      end
    end
