a_list = []

(1..21).each do |ele|
  a_list.push(1)
end

(1..20).each do |i|
  (2..21).each do |ele|
    a_list[ele-1] = a_list[ele-1] + a_list[ele-2]
  end
  p a_list
end

p a_list.last
