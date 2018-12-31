goal = 100 * 10000
ans = 0

def check_reverce(x)
  x = x.split('')
  x == x.reverse
end

(1..goal).each do |ele|
  if check_reverce(ele.to_s)
    bi_ele = ele.to_s(2)
    if check_reverce(bi_ele)
      ans += ele
    end
  end
end

p ans
