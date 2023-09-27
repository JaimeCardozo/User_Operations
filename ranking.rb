path = '\Users\kike\Desktop\Programación\User_Operations\records'
ranking = {}
Dir.foreach(path) do |filename|
       next if filename == '.' || filename == '..'
      
       puts "working on #{filename}"

       name = filename.gsub(".txt","")
       puts name 
       
       file = File.open("#{path}/#{filename}", 'r')
     
       #some code
       score = file.gets
       ranking[name] = score
       file.close
     
       # more code
     end