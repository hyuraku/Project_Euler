goal = 100 * 10000
ans = 0

(1..goal).each do |ele|
  if (ele.to_s).split('') == (ele.to_s.split('')).reverse
    bi_ele = ele.to_s(2)
    if bi_ele.split('') == (bi_ele.split('')).reverse
      ans += ele
    end
  end
end

p ans
