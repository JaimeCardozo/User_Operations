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
print times.is_a?(Integer)