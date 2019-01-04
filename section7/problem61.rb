def check_match(a,b)
  (a.to_s.split(''))[2..3] == (b.to_s.split(''))[0..1]
end

start = 10 ** 3
goal = 10 ** 4 - 1

# three_list = (1..goal).map{|i| i * (i+1)/2}
# four_list = (1..goal).map{|i| i ** 2}
# five_list = (1..goal).map{|i| i * (3*i-1) /2}
# six_list = (1..goal).map{|i| i * (2*i-1)}
# seven_list = (1..goal).map{|i| i * (5*i-3)/2}
eight_list = (1..goal).map{|i| i * (3*i-2) }

one_list = (1..9).to_a
target_list = []

def make_list(a_list,b_list)
  a_list.product(b_list).collect {|set| set.join(",") }
end

(0..4).each do |i|
  if i == 0
    target_list = make_list(one_list,one_list)
  else
    target_list = make_list(target_list,one_list)
  end
end

p target_list[1..10]
