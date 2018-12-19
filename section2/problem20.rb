def factorial(n)
  return 1 if n == 0
  return n * factorial(n - 1)
end

a_list = factorial(100).to_s.split('')
total = 0

a_list.each do |ele|
  total += ele.to_i
end

p total
