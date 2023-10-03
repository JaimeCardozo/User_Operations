path = '\Users\kike\Desktop\Programación\User_Operations\records'
ranking = {}
Dir.foreach(path) do |filename|
       next if filename == '.' || filename == '..'

       name = filename.gsub(".txt","")
       
       file = File.open("#{path}/#{filename}", 'r')
     
       #some code
       score = file.gets
       ranking[name] = score
       file.close
     
       # more code
     end

puts ranking
if ranking == {}
  ranking = ranking.sort_by(&:last)
  ranking = ranking.reverse
  i = 1
  ranking.each do |date|
    #puts "#{date[1]}. #{date[0]}"
    puts "#{i}. #{date[0]} -------- #{date[1]}"
    i += 1
  end
else
  puts "Users do not exist"
end
