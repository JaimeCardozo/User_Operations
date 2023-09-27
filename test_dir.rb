require 'time'
require 'fileutils'
path = '\Users\kike\Desktop\Programación\User_Operations\records'
Dir.foreach(path) do |filename|
       next if filename == '.' || filename == '..'
      
       puts "working on #{filename}"

       name = filename.gsub(".txt","")
       puts name 
       
       file = File.open("#{path}/#{filename}", 'r')
     
       #some code
     
       file.close
     
       # more code
     end