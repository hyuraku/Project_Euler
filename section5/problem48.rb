goal = 1000

a_list = (1..goal).map{|i| i ** i}

ans = (a_list.sum)%(10 ** 10)

p ans
