target = 2 ** 1000
total = 0
a_list = (target.to_s).split('')

a_list.each do |ele|
  total = total + ele.to_i
end

p total
