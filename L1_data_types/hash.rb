# Suppose you have a hash h = {a:1, b:2, c:3, d:4}. Get the value of key :b Add to this hash the key:value pair {e:5}

h = {:a => 1, :b => 2, :c =>3, :d => 4}
h[:e] = 5 + h[:b]

puts h