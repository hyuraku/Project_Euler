max = 0

def number_sum(n)
  a_list=n.to_s.split('')
  (a_list.map{|i| i.to_i}).sum
end

(1..100).each do |a_i|
  (1..100).each do |b_i|
    if number_sum(a_i ** b_i ) > max
      max = number_sum(a_i ** b_i )
    end
  end
end

p max
