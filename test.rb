require 'time'
#users = {2:casa, 20:casita, -21:casota, 1:cas}
#array = users.sort
time1 = Time.now
puts "Enter: begin"
gets
time2 = Time.now 
time = time2 - time1
puts time
times = time.to_i
puts times.is_a?(Integer)
number = 20 * 0.5
puts number
puts File.file?("operations_kike.txt")
file = File.open("operations_kike.txt")
line = file.gets
puts line.is_a?(String)
record = File.open("operations_kike33.txt","a+")
new_records = record.gets
record.write(0)