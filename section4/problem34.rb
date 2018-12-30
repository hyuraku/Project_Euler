def factorial(n)
  return 1 if n == 0
  return n * factorial(n - 1)
end

ans = 0

(3..10000000).each do |ele|
  ele_list = (ele.to_s).split('')
  total = 0
  ele_list.each do |i|
    total += factorial(i.to_i)
  end
  if ele == total
    p ele
    ans += ele
  end
end

p ans
