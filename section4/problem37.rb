require "prime"

arr = (0..9).to_a
first_num = 2
last_num = 6

sum = 0
(first_num..last_num).each do |i|
  aa = arr.repeated_permutation(i).map do |a|
    (a.join).to_i
  end
  aa = aa.select do |a|
    Prime.prime?(a)
  end
  aa = aa.select do |aaa|
    (i-1).times do |ii|
      tar = 10 ** (ii + 1)
      res = (Prime.prime?(aaa/tar) and Prime.prime?(aaa%tar))
      if res == false
        break
      end
    end
  end

  sum += aa.sum()
end
p sum
