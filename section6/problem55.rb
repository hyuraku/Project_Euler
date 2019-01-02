def reverse_number(n)
  n.to_s.split('').reverse.join.to_i
end

goal = 10000 - 1

ans = 0

(1..goal).each do |ele|
  (0..50).each do |time|
    if time == 50
      p ele
      ans += 1
      break
    end
    if ele == reverse_number(ele) && time > 0
      break
    else
      ele = ele + reverse_number(ele)
    end
  end
end

p ans
