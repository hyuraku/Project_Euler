arr = (0..9).to_a
max = 10

aa = arr.permutation(max).map do |a|
  (a.join).to_i
end

aa = aa.select { |a|
  a > (10 ** 9)
}

primes = [17,13,11,7,5,3,2]

sum = 0
aa.each do |a|
  res = true
  primes.each.with_index(0) do |prime, index|
    target = a% (10**(index+3)) / (10**(index))
    if (target%prime != 0)
      res = false
      break
    end
  end
  if res
    p a
    sum += a
  end
end

p sum
