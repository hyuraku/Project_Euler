require "prime"

a_list = []
total = 0

def number_divisors(n)
  Prime.prime_division(n)
end

def divisor_sub(p, q)
  (0..q).reduce([]) {|xs, i| xs + [p ** i]}
end

def divisor(n)
  number_divisors(n).reduce([1]) {|ys, xs|
  ys.product(divisor_sub(*xs)).map {|x, y| x * y}
  }.sort()
end

2.upto(10000).each do |ele|
  list_sum = divisor(ele).sum - ele
  if ele == divisor(list_sum).sum - list_sum && ele != list_sum
    p ele
    total += ele
  end
end

p total
