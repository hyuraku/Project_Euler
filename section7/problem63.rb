def check_number(a, b)
  Math.log(a ** b,10).to_i + 1
end

ans = 0

a_goal = 100000
b_goal = 10000

(1..a_goal).each do |a_i|
  (1..b_goal).each do |b_i|
    if check_number(a_i,b_i) == b_i
      ans += 1
    elsif check_number(a_i,b_i) > b_i
      break
    end
  end
end

p ans
