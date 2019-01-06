require "prime"

def number_divisors(n)
  Prime.prime_division(n)
end

max = 1
ans = 0
goal = 10 ** 6
prime_hash = {}

def make_list(n)
  (number_divisors(n).flatten.map.with_index { |num, index| num if index%2 == 0 }).compact
end

(2..goal).each do |i|
  prime_hash[i] = make_list(i)
  if i%(goal/10) == 0
    p '///'
  end
end

prime_hash.each do |index,list|
  if (index > 2) && !(Prime.prime?(index))
    sum = 1
    (2..index-1).each do |i|
      if (make_list(i) & list) == []
        sum += 1
      end
    end
    tar=index.to_f/sum.to_i
    if max < tar
      p [index,tar]
      max = tar
      ans = index
    end
  end
end

p ans
