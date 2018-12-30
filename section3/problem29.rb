a_list = []

(2..100).each do |a_i|
  (2..100).each do |b_i|
    a_list.push(a_i ** b_i)
  end
end

p (a_list.uniq).size
