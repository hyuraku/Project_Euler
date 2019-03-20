max_x = 0

def formula(a,b,c)
  a ** 2 == b * (c ** 2) + 1
end

def b_list
  ((1..1000).map{|i| i unless Math.sqrt(i) - Math.sqrt(i).to_i == 0.0}).compact
end

ans = {}

(b_list).each do |b_i|
  (1..1000000).each do |a_i|
    if ans[b_i].to_i != 0
      break
    end
    (1..100000).each do |c_i|
      if formula(a_i,b_i,c_i) && (ans[b_i].to_i == 0)
        p [a_i, b_i, c_i]
        ans[b_i] = a_i
        max_x = a_i
        break
      end
    end
  end
end

if ans.keys.sort == b_list
  p 'enough!'
end

p ans.key(ans.values.max)
