arr = (0..9).to_a
max = 10

aa = arr.permutation(max).map do |a|
  (a.join).to_i
end

aa = aa.select { |a|
  a > (10 ** 9)
}

sum = 0
aa.each do |a|
  sixth_num = a%1000
  if sixth_num%17 != 0
    next
  end
  fifth_num = (a%10000)/10
  if fifth_num%13 != 0
    next
  end
  fourth_num = (a%100000)/100
  if fourth_num%11 != 0
    next
  end
  third_num = (a%1000000)/1000
  if third_num%7 != 0
    next
  end
  second_num = (a%10000000)/10000
  if second_num%5 != 0
    next
  end
  first_num = (a%100000000)/100000
  if first_num%3 != 0
    next
  end
  init_num = (a%1000000000)/1000000
  if init_num%2 != 0
    next
  end
  p a
  sum += a
end

p sum
