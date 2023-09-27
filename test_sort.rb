hash = {"kike"=>2}
puts hash
hash["jaime"] = 1
puts hash
hash["gara"] = 3
puts hash
hash_sort = hash.sort_by(&:last)
hash_sort_reverse = hash.sort_by(&:last).reverse
print hash_sort
puts
print hash_sort_reverse
puts
hash_sort.each do |date|
    puts "#{date[1]}. #{date[0]}"
end

